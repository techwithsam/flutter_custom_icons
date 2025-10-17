# Quick Start Guide

## 1. Setup (First Time Only)

Install Fantasticon globally:

```bash
npm install -g fantasticon
```

## 2. Adding Icons Workflow

### Step 1: Add SVG Icons

Place your SVG files in `assets/icons/`. Example sources:

- [Heroicons](https://heroicons.com/)
- [Lucide](https://lucide.dev/)
- [Feather Icons](https://feathericons.com/)
- [Material Icons](https://fonts.google.com/icons)

**Tips:**

- Use monochrome (single color) SVGs
- Use descriptive filenames with underscores: `user_profile.svg`
- Avoid spaces or special characters

### Step 2: Generate Font & Dart Class

Run the automation script:

```bash
node tool/generate_icons.js
```

This will:

- Convert all SVGs in `assets/icons/` to a `.ttf` font
- Generate `assets/fonts/iconixto.ttf`
- Auto-generate/update `lib/src/iconixto_icons.dart` with icon constants

### Step 3: Use in Flutter

```dart
import 'package:flutter_custom_icons/flutter_custom_icons.dart';

// Use Iconixto icons
Icon(Iconixto.yourIconName)

// Use Feather icons
Icon(FeatherIcons.activity)
```

### Step 4: Test

Run the example app to see your new icons:

```bash
cd example
flutter run
```

## 3. Publishing Updates

When you add new icons:

1. Update `CHANGELOG.md` with the new icon names
2. Increment version in `pubspec.yaml`
3. Commit changes
4. Publish to pub.dev: `flutter pub publish`

## Troubleshooting

**Problem:** Icons not showing up

- Check that `pubspec.yaml` includes the font under `flutter > fonts`
- Run `flutter clean` and `flutter pub get`

**Problem:** Script fails

- Ensure Node.js is installed: `node --version`
- Ensure Fantasticon is installed: `fantasticon --version`
- Check that SVG files are in `assets/icons/`

**Problem:** Icon name conflicts

- Rename SVG files to avoid duplicate names
- Regenerate with `node tool/generate_icons.js`
