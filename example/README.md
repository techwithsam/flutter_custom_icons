# Flutter Custom Icons Example

This example demonstrates how to use the Flutter Custom Icons package.

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_custom_icons/flutter_custom_icons.dart';

// Basic usage
Icon(FlutterCustomIcons.home)

// With size and color
Icon(
  FlutterCustomIcons.link,
  size: 30,
  color: Colors.blue,
)

// In a button
IconButton(
  icon: Icon(FlutterCustomIcons.cog_1),
  onPressed: () {
    // Handle tap
  },
)
```

## Running the Example

```bash
cd example
flutter run
```

## Available Icons

All generated icons are available as static constants in the `FlutterCustomIcons` class:

- `FlutterCustomIcons.home`
- `FlutterCustomIcons.home_1`
- `FlutterCustomIcons.home_2`
- `FlutterCustomIcons.home_3`
- `FlutterCustomIcons.home_4`
- `FlutterCustomIcons.link`
- `FlutterCustomIcons.link_1`
- `FlutterCustomIcons.link_2`
- `FlutterCustomIcons.link_3`
- `FlutterCustomIcons.cog_1`
- `FlutterCustomIcons.cog_2`
- `FlutterCustomIcons.zoom_plus`
