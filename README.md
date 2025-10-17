# Flutter Custom Icons

Curated free SVG icons as lightweight Flutter font packs — scalable, themeable, zero bloat.

## Features

- ✅ **100% Free Icons** - Curated from popular open-source icon sets
- ✅ **Lightweight** - Bundled `.ttf` font files, no bloat
- ✅ **Scalable** - Vector icons that look sharp at any size
- ✅ **Themeable** - Use with Flutter's `Icon` widget, supports color and size customization
- ✅ **Easy to Use** - Simple APIs: `Icon(Iconixto.iconName)` and `Icon(FeatherIcons.name)`
- ✅ **Easy to Extend** - Add more icons with a single command
  
Included icon families:

- Iconixto (custom curated set; generated from `assets/icons/`)
- Feather Icons (pre-bundled classic set)

## Installation

Add this to your app's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_custom_icons: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Usage

Import the package in your Dart code:

```dart
import 'package:flutter_custom_icons/flutter_custom_icons.dart';
```

Use the icons in your widgets.

```dart
// Iconixto icons
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

// In an app bar
AppBar(
  title: Text('My App'),
  leading: Icon(Iconixto.home),
)

// Feather icons
Icon(FeatherIcons.activity)
```

## Icon Gallery

Here’s a quick preview of some available icons. Use your IDE’s autocomplete on `Iconixto.` or `FeatherIcons.` to browse the full set.

### Iconixto (custom curated)

| Preview | Dart Constant |
| ------- | ------------- |
| <img src="https://raw.githubusercontent.com/techwithsam/flutter_custom_icons/main/assets/icons/home.svg" alt="home icon" width="24" style="filter: brightness(0) invert(1);"> | `Iconixto.home` |
| <img src="https://raw.githubusercontent.com/techwithsam/flutter_custom_icons/main/assets/icons/home2.svg" alt="home2 icon" width="24" style="filter: brightness(0) invert(1);"> | `Iconixto.home2` |
| <img src="https://raw.githubusercontent.com/techwithsam/flutter_custom_icons/main/assets/icons/link.svg" alt="link icon" width="24" style="filter: brightness(0) invert(1);"> | `Iconixto.link` |
| <img src="https://raw.githubusercontent.com/techwithsam/flutter_custom_icons/main/assets/icons/link1.svg" alt="link1 icon" width="24" style="filter: brightness(0) invert(1);"> | `Iconixto.link1` |
| <img src="https://raw.githubusercontent.com/techwithsam/flutter_custom_icons/main/assets/icons/cog1.svg" alt="cog1 icon" width="24" style="filter: brightness(0) invert(1);"> | `Iconixto.cog1` |
| <img src="https://raw.githubusercontent.com/techwithsam/flutter_custom_icons/main/assets/icons/zoomPlus.svg" alt="zoomPlus icon" width="24" style="filter: brightness(0) invert(1);"> | `Iconixto.zoomPlus` |

### FeatherIcons (classic set)

| Preview | Dart Constant |
| ------- | ------------- |
| ![activity](/assets/icons/activity.svg) | `FeatherIcons.activity` |
| ![airplay](/assets/icons/airplay.svg) | `FeatherIcons.airplay` |
| ![alert-circle](/assets/icons/alert-circle.svg) | `FeatherIcons.alertCircle` |
| ![anchor](/assets/icons/anchor.svg) | `FeatherIcons.anchor` |
| ![book](/assets/icons/book.svg) | `FeatherIcons.book` |
| ![heart](/assets/icons/heart.svg) | `FeatherIcons.heart` |

See the [example](example/) folder for a running demo and more icons.

## For Package Maintainers

### Adding New Icons

1. **Add SVG files** to `assets/icons/`
   - Use monochrome SVGs for best results
   - Sources: [Heroicons](https://heroicons.com/), [Lucide](https://lucide.dev/), [Feather Icons](https://feathericons.com/), etc.

2. **Run the generation script**:

```bash
node tool/generate_icons.js
```

1. **Test the icons** in the example app

### How It Works

The automation script:

1. Scans all SVG files in `assets/icons/`
2. Uses [Fantasticon](https://github.com/tancredi/fantasticon) (via `npx`) to convert them to a `.ttf` font at `assets/fonts/iconixto.ttf`
3. Generates a Dart class (`lib/src/iconixto_icons.dart`) with constants mapped to Unicode code points
4. Ensures names are valid Dart identifiers (lowerCamelCase)

### Requirements

- Node.js (for running the generation script)
- Fantasticon is invoked via `npx fantasticon` automatically. Optionally install globally with `npm install -g fantasticon` if you prefer.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Add your SVG icons to `assets/icons/`
3. Run `node tool/generate_icons.js`
4. Submit a PR with your additions

## License

This package is licensed under the MIT License. See [LICENSE](LICENSE) for details.

Individual icon sets may have their own licenses. Please check the source of each icon set for specific licensing information.

## Icon Sources

Icons in this package are sourced from:

- [Heroicons](https://heroicons.com/) - MIT License
- [Lucide](https://lucide.dev/) - ISC License
- [Feather Icons](https://feathericons.com/) - MIT License
- And other free icon sources

## Support

For issues, questions, or suggestions, please file an issue on [GitHub](https://github.com/techwithsam/flutter_custom_icons/issues).
