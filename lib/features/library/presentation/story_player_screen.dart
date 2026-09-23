// features/library/presentation/story_player_screen.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_service/audio_service.dart';
import 'package:hamrah_madaran/core/theme/app_theme.dart';
import 'package:hamrah_madaran/core/theme/theme_provider.dart';
import 'package:hamrah_madaran/core/utils/persian_utils.dart';
import 'package:hamrah_madaran/features/today/domain/content.dart';
import 'package:hamrah_madaran/l10n/app_localizations.dart';

/// Story player screen with background playback support
class StoryPlayerScreen extends ConsumerStatefulWidget {
  const StoryPlayerScreen({required this.story, super.key});

  final Story story;

  @override
  ConsumerState<StoryPlayerScreen> createState() => _StoryPlayerScreenState();
}

class _StoryPlayerScreenState extends ConsumerState<StoryPlayerScreen> {
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;
  double _playbackSpeed = 1.0;
  Timer? _sleepTimer;
  bool _showTranscript = false;

  @override
  void initState() {
    super.initState();
    _initAudio();
  }

  Future<void> _initAudio() async {
    _audioPlayer = AudioPlayer();
    
    if (widget.story.audioAsset != null) {
      await _audioPlayer.setAsset(widget.story.audioAsset!);
    } else {
      await _audioPlayer.setUrl(widget.story.audioUrl);
    }

    _audioPlayer.playerStateStream.listen((state) {
      if (mounted) {
        setState(() {
          _isPlaying = state.playing;
          _position = state.position;
          _duration = state.duration ?? Duration.zero;
        });
      }
    });

    _audioPlayer.durationStream.listen((duration) {
      if (mounted && duration != null) {
        setState(() => _duration = duration);
      }
    });
  }

  @override
  void dispose() {
    _sleepTimer?.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play();
    }
  }

  void _seekTo(double value) {
    final position = Duration(milliseconds: (_duration.inMilliseconds * value).round());
    _audioPlayer.seek(position);
  }

  void _setSpeed(double speed) {
    _playbackSpeed = speed;
    _audioPlayer.setSpeed(speed);
  }

  void _setSleepTimer(int minutes) {
    _sleepTimer?.cancel();
    _sleepTimer = Timer(Duration(minutes: minutes), () {
      if (mounted) {
        _audioPlayer.pause();
        setState(() => _isPlaying = false);
      }
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('تایمر خواب ${minutes} دقیقه تنظیم شد')),
    );
  }

  String _formatDuration(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '${toPersianDigits(minutes)}:${toPersianDigits(seconds)}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);
    final l10n = context.l10n;

    return Scaffold(
      backgroundColor: theme.colors.bgBase,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: theme.colors.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(widget.story.title, style: theme.textStyles.h3),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              _showTranscript ? Icons.close_fullscreen : Icons.article_outlined,
              color: theme.colors.textPrimary,
            ),
            onPressed: () => setState(() => _showTranscript = !_showTranscript),
          ),
        ],
      ),
      body: _showTranscript ? _buildTranscriptView(theme, l10n) : _buildPlayerView(theme, l10n),
    );
  }

  Widget _buildPlayerView(AppTheme theme, AppLocalizations l10n) {
    return Stack(
      children: [
        // Background
        Positioned.fill(
          child: widget.story.cover != null
              ? Image.asset(
                  widget.story.cover!,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(color: theme.colors.bgBase),
                )
              : Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        theme.colors.lilac.withValues(alpha: 0.2),
                        theme.colors.bgBase,
                      ],
                    ),
                  ),
                ),
        ),
        // Foreground content
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(theme.spacing.screenPadding),
            child: Column(
              children: [
                SizedBox(height: theme.spacing.s40),
                // Cover art
                Container(
                  width: 280,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(theme.radius.image),
                    boxShadow: [
                      BoxShadow(
                        color: theme.colors.lilac.withValues(alpha: 0.3),
                        blurRadius: 24,
                        offset: const Offset(0, 12),
                      ),
                    ],
                  ),
                  child: widget.story.cover != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(theme.radius.image),
                          child: Image.asset(
                            widget.story.cover!,
                            fit: BoxFit.cover,
                            width: 280,
                            height: 280,
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(theme.radius.image),
                            gradient: LinearGradient(
                              colors: [theme.colors.lilac, theme.colors.lilac.withValues(alpha: 0.7)],
                            ),
                          ),
                          child: Center(
                            child: Icon(Icons.menu_book, size: 100, color: Colors.white.withValues(alpha: 0.5)),
                          ),
                        ),
                ),
                SizedBox(height: theme.spacing.s32),
                // Title and narrator
                Text(
                  widget.story.title,
                  style: theme.textStyles.h1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: theme.spacing.s8),
                Text(
                  '${l10n.storyNarrator}: ${widget.story.narrator}',
                  style: theme.textStyles.body.copyWith(color: theme.colors.textSecondary),
                ),
                const Spacer(),
                // Progress bar
                Column(
                  children: [
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: theme.colors.primary,
                        inactiveTrackColor: theme.colors.textTertiary.withValues(alpha: 0.3),
                        thumbColor: theme.colors.primary,
                        overlayColor: theme.colors.primary.withValues(alpha: 0.2),
                        trackHeight: 4,
                      ),
                      child: Slider(
                        value: _duration.inMilliseconds > 0
                            ? _position.inMilliseconds / _duration.inMilliseconds
                            : 0,
                        onChanged: _seekTo,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: theme.spacing.s16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_formatDuration(_position), style: theme.textStyles.caption),
                          Text(_formatDuration(_duration), style: theme.textStyles.caption),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: theme.spacing.s24),
                // Play/Pause button
                GestureDetector(
                  onTap: _togglePlayPause,
                  child: Container(
                    width: 96,
                    height: 96,
                    decoration: BoxDecoration(
                      color: theme.colors.primary,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: theme.colors.primary.withValues(alpha: 0.4),
                          blurRadius: 24,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Icon(
                      _isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: theme.spacing.s32),
                // Controls row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _ControlButton(
                      icon: Icons.speed_outlined,
                      label: '${_playbackSpeed}x',
                      onTap: _showSpeedDialog,
                      theme: theme,
                    ),
                    _ControlButton(
                      icon: Icons.timer_outlined,
                      label: l10n.storySleepTimer,
                      onTap: _showSleepTimerDialog,
                      theme: theme,
                    ),
                    _ControlButton(
                      icon: _showTranscript ? Icons.close_fullscreen : Icons.article_outlined,
                      label: l10n.storyTranscript,
                      onTap: () => setState(() => _showTranscript = true),
                      theme: theme,
                    ),
                  ],
                ),
                SizedBox(height: theme.spacing.s24),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTranscriptView(AppTheme theme, AppLocalizations l10n) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(theme.spacing.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(l10n.storyTranscript, style: theme.textStyles.h2),
                const Spacer(),
                IconButton(
                  icon: Icon(Icons.close, color: theme.colors.textPrimary),
                  onPressed: () => setState(() => _showTranscript = false),
                ),
              ],
            ),
            SizedBox(height: theme.spacing.s16),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  widget.story.transcript,
                  style: theme.textStyles.body.copyWith(height: 1.8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSpeedDialog() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => _SpeedBottomSheet(
        currentSpeed: _playbackSpeed,
        onSelected: _setSpeed,
      ),
    );
  }

  void _showSleepTimerDialog() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => _SleepTimerBottomSheet(
        onSelected: _setSleepTimer,
      ),
    );
  }
}

/// Speed selection bottom sheet
class _SpeedBottomSheet extends ConsumerWidget {
  const _SpeedBottomSheet({
    required this.currentSpeed,
    required this.onSelected,
  });

  final double currentSpeed;
  final ValueChanged<double> onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final speeds = [0.75, 1.0, 1.25, 1.5];

    return Container(
      padding: EdgeInsets.all(theme.spacing.screenPadding),
      decoration: BoxDecoration(
        color: theme.colors.bgSurface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.sheet)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            margin: EdgeInsets.only(bottom: theme.spacing.s16),
            decoration: BoxDecoration(
              color: theme.colors.textTertiary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Text('سرعت پخش', style: theme.textStyles.h3),
          SizedBox(height: theme.spacing.s24),
          ...speeds.map((speed) => ListTile(
            title: Text('${speed}x', style: theme.textStyles.body),
            trailing: currentSpeed == speed
                ? Icon(Icons.check, color: theme.colors.primary)
                : null,
            onTap: () {
              onSelected(speed);
              Navigator.pop(context);
            },
          )),
          SizedBox(height: theme.spacing.s16),
        ],
      ),
    );
  }
}

/// Sleep timer bottom sheet
class _SleepTimerBottomSheet extends ConsumerWidget {
  const _SleepTimerBottomSheet({required this.onSelected});

  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final minutes = [5, 10, 15, 30];

    return Container(
      padding: EdgeInsets.all(theme.spacing.screenPadding),
      decoration: BoxDecoration(
        color: theme.colors.bgSurface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(theme.radius.sheet)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            margin: EdgeInsets.only(bottom: theme.spacing.s16),
            decoration: BoxDecoration(
              color: theme.colors.textTertiary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Text('تایمر خواب', style: theme.textStyles.h3),
          SizedBox(height: theme.spacing.s24),
          ...minutes.map((min) => ListTile(
            title: Text('${toPersianDigits(min)} دقیقه', style: theme.textStyles.body),
            onTap: () {
              onSelected(min);
              Navigator.pop(context);
            },
          )),
          ListTile(
            title: Text('خاموش', style: theme.textStyles.body),
            onTap: () {
              onSelected(0);
              Navigator.pop(context);
            },
          ),
          SizedBox(height: theme.spacing.s16),
        ],
      ),
    );
  }
}

/// Small control button
class _ControlButton extends StatelessWidget {
  const _ControlButton({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.theme,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(theme.radius.button),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spacing.s16, vertical: theme.spacing.s12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: theme.colors.textPrimary, size: 24),
            SizedBox(height: theme.spacing.s4),
            Text(label, style: theme.textStyles.caption),
          ],
        ),
      ),
    );
  }
}