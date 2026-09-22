# Dockerfile for building Flutter APK
FROM cirrusci/flutter:3.27.1

WORKDIR /app

COPY pubspec.yaml pubspec.lock ./
RUN flutter pub get

COPY . .

RUN flutter gen-l10n
RUN flutter analyze
RUN flutter test
RUN flutter build apk --release

# Output APK location: /app/build/app/outputs/flutter-apk/app-release.apk