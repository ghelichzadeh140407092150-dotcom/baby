# Building Hamrah-e Madaran APK

## Problem
Local macOS system has Dart 3.6.0 but Flutter requires Dart 3.11+. 

## Solutions

### Option 1: GitHub Actions (Recommended)
The project includes a GitHub Actions workflow (`.github/workflows/build-apk.yml`) that automatically builds APKs on every push.

**To use:**
1. Push code to GitHub
2. Go to Actions tab
3. Download `app-release-apk` artifact from workflow run

### Option 2: Docker Build
Build APK using Docker (works on any system with Docker):

```bash
# Build APK using Docker
make docker-build

# Or manually:
docker build -t hamrah-madaran .
docker run --rm -v $(pwd)/build:/app/build hamrah-madaran
```

APK will be at `build/app/outputs/flutter-apk/app-release.apk`

### Option 3: Install Flutter 3.27+ with fvm
```bash
# Install fvm
curl -fsSL https://fvm.app/install.sh | bash

# Install Flutter 3.27.1 (compatible with Dart 3.6.x)
fvm install 3.27.1
fvm use 3.27.1

# Then build normally
fvm flutter pub get
fvm flutter build apk --release
```

### Option 4: GitHub Codespaces / Gitpod
Open project in GitHub Codespaces or Gitpod - they have Flutter pre-installed.

### Option 5: CI/CD Services
- **Codemagic**: Connect GitHub repo, auto-build on push
- **Bitrise**: Mobile CI/CD with Flutter support
- **Nevercode**: Flutter-specific CI/CD

## Quick Commands

```bash
# Local development (if Flutter works)
make setup
make format
make analyze
make test
make build-apk

# Docker-based (always works)
make docker-build

# Full CI locally
make ci-local
```

## APK Output Location
`build/app/outputs/flutter-apk/app-release.apk`

## Requirements
- Flutter 3.27.1+ (stable channel)
- Dart 3.6.x compatible
- Android SDK (for local builds)