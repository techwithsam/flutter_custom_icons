# Flutter Custom Icons Example

This example demonstrates how to use the Flutter Custom Icons package.

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_custom_icons/flutter_custom_icons.dart';

// Basic usage
Icon(Iconixto.home)

// With size and color
Icon(
  Iconixto.link,
  size: 30,
  color: Colors.blue,
)

// In a button
IconButton(
  icon: Icon(Iconixto.cog1),
  onPressed: () {
    // Handle tap
  },
)

// Feather icons
Icon(FeatherIcons.activity)
```

## Running the Example

```bash
cd example
flutter run
```

## Available Icons

Browse available icons via autocomplete on:

- `Iconixto.` (custom curated set)
- `FeatherIcons.` (Feather icon set)
