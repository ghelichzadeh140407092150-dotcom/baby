// core/router/scaffold_with_nav.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_theme.dart';
import '../theme/theme_provider.dart';
import 'routes.dart';

/// Bottom navigation bar scaffold for the 4 main tabs
class ScaffoldWithNavBar extends ConsumerWidget {
  const ScaffoldWithNavBar({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _getCurrentIndex(location);
    
    return Scaffold(
      body: child,
      bottomNavigationBar: _BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) => _onTap(context, index),
        theme: theme,
      ),
    );
  }

  int _getCurrentIndex(String location) {
    if (location.startsWith(AppRoutes.today)) return 0;
    if (location.startsWith(AppRoutes.library)) return 1;
    if (location.startsWith(AppRoutes.child)) return 2;
    if (location.startsWith(AppRoutes.nutrition)) return 3;
    return 0;
  }

  void _onTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(AppRoutes.today);
        break;
      case 1:
        context.go(AppRoutes.library);
        break;
      case 2:
        context.go(AppRoutes.child);
        break;
      case 3:
        context.go(AppRoutes.nutrition);
        break;
    }
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    required this.currentIndex,
    required this.onTap,
    required this.theme,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    final isDark = theme.isDark;
    final activeColor = theme.colors.primary;
    final inactiveColor = theme.colors.textTertiary;
    final backgroundColor = isDark 
        ? theme.colors.bgSurface 
        : theme.colors.bgSurface.withValues(alpha: 0.92);
    final activeBackgroundColor = isDark
        ? theme.colors.bgSunken
        : theme.colors.bgSunken.withValues(alpha: 0.5);

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: (isDark ? Colors.black : theme.colors.textPrimary).withValues(alpha: 0.08),
            blurRadius: 16,
            offset: const Offset(0, -4),
            spreadRadius: 0,
          ),
        ],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(
                index: 0,
                currentIndex: currentIndex,
                icon: Icons.today_outlined,
                activeIcon: Icons.today,
                label: 'امروز',
                activeColor: activeColor,
                inactiveColor: inactiveColor,
                activeBackgroundColor: activeBackgroundColor,
                onTap: onTap,
              ),
              _NavItem(
                index: 1,
                currentIndex: currentIndex,
                icon: Icons.library_books_outlined,
                activeIcon: Icons.library_books,
                label: 'کتابخانه',
                activeColor: theme.colors.lilac,
                inactiveColor: inactiveColor,
                activeBackgroundColor: activeBackgroundColor,
                onTap: onTap,
              ),
              _NavItem(
                index: 2,
                currentIndex: currentIndex,
                icon: Icons.child_care_outlined,
                activeIcon: Icons.child_care,
                label: 'فرزند من',
                activeColor: theme.colors.secondary,
                inactiveColor: inactiveColor,
                activeBackgroundColor: activeBackgroundColor,
                onTap: onTap,
              ),
              _NavItem(
                index: 3,
                currentIndex: currentIndex,
                icon: Icons.restaurant_outlined,
                activeIcon: Icons.restaurant,
                label: 'تغذیه',
                activeColor: theme.colors.accent,
                inactiveColor: inactiveColor,
                activeBackgroundColor: activeBackgroundColor,
                onTap: onTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.index,
    required this.currentIndex,
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.activeColor,
    required this.inactiveColor,
    required this.activeBackgroundColor,
    required this.onTap,
  });

  final int index;
  final int currentIndex;
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final Color activeColor;
  final Color inactiveColor;
  final Color activeBackgroundColor;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final isActive = currentIndex == index;
    final color = isActive ? activeColor : inactiveColor;
    
    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        borderRadius: BorderRadius.circular(999),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOutCubic,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          decoration: BoxDecoration(
            color: isActive ? activeBackgroundColor : Colors.transparent,
            borderRadius: BorderRadius.circular(999),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isActive ? activeIcon : icon,
                size: 24,
                color: color,
              ),
              if (isActive) ...[
                const SizedBox(width: 6),
                Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'Vazirmatn',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: color,
                    height: 1.4,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}