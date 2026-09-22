# Makefile for Hamrah-e Madaran build automation

FLUTTER_VERSION := 3.27.1
FLUTTER_CHANNEL := stable

.PHONY: help setup format analyze test build-apk build-ios clean docker-build docker-test ci-local

help:
	@echo "Hamrah-e Madaran - Build Commands"
	@echo ""
	@echo "Local Development:"
	@echo "  make setup          - Install dependencies"
	@echo "  make format         - Format code with dart format"
	@echo "  make analyze        - Run flutter analyze"
	@echo "  make test           - Run all tests"
	@echo "  make build-apk      - Build release APK (requires Flutter 3.27+)"
	@echo ""
	@echo "Docker-based (works without local Flutter):"
	@echo "  make docker-build   - Build APK using Docker"
	@echo "  make docker-test    - Run tests in Docker"
	@echo ""
	@echo "CI/CD:"
	@echo "  make ci-local       - Run full CI pipeline locally with Docker"
	@echo ""

setup:
	flutter pub get
	flutter gen-l10n

format:
	dart format --set-exit-if-changed lib/ test/

analyze:
	flutter analyze

test:
	flutter test

build-apk:
	flutter build apk --release
	@echo "APK location: build/app/outputs/flutter-apk/app-release.apk"

build-ios:
	flutter build ios --release --no-codesign

clean:
	flutter clean
	rm -rf build/

docker-build:
	docker build -t hamrah-madaran:latest .
	docker run --rm -v $(PWD)/build:/app/build hamrah-madaran:latest

docker-test:
	docker build -t hamrah-madaran:test --target test .
	docker run --rm hamrah-madaran:test

ci-local: docker-build
	@echo "CI pipeline completed. APK at build/app/outputs/flutter-apk/app-release.apk"

install-fvm:
	curl -fsSL https://fvm.app/install.sh | bash
	fvm install $(FLUTTER_VERSION)
	fvm use $(FLUTTER_VERSION)

# Quick commands for development
dev:
	flutter run

dev-web:
	flutter run -d chrome

log:
	flutter logs