# Flutter Custom Icons (iconixto)

Curated free SVG icons as a lightweight Flutter font pack — scalable, themeable, zero bloat.

## Features

- ✅ **100% Free Icons** - Curated from popular open-source icon sets
- ✅ **Lightweight** - Single `.ttf` font file, no bloat
- ✅ **Scalable** - Vector icons that look sharp at any size
- ✅ **Themeable** - Use with Flutter's `Icon` widget, supports color and size customization
- ✅ **Easy to Use** - Simple API: `Icon(Iconixto.iconName)`
- ✅ **Easy to Extend** - Add more icons with a single command

## Installation

Add this to your package's `pubspec.yaml` file:

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

Use the icons in your widgets (Iconixto font):

```dart
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

// In an app bar
AppBar(
  title: Text('My App'),
  leading: Icon(Iconixto.home),
)
```

## Available Icons (sampler)

Current sampler includes (names match `Iconixto.*`):

- `home`, `home2`, `home3`, `home4`
- `link`, `link1`, `link2`, `link3`
- `cog1`, `cog2`
- `zoomPlus`

See the [example](example/) folder for a complete demo.

## For Package Maintainers

### Adding New Icons

1. **Add SVG files** to `assets/icons/`
   - Use monochrome SVGs for best results
   - Sources: [Heroicons](https://heroicons.com/), [Lucide](https://lucide.dev/), [Feather Icons](https://feathericons.com/), etc.

2. **Run the generation script**:

```bash
node tool/generate_icons.js
```

3. **Test the icons** in the example app

### How It Works

The automation script:

1. Scans all SVG files in `assets/icons/`
2. Uses [Fantasticon](https://github.com/tancredi/fantasticon) to convert them to a `.ttf` font
3. Generates a Dart class (`lib/src/iconixto_icons.dart`) with constants mapped to Unicode codepoints
4. Ensures names are valid Dart identifiers (lowerCamelCase)

### Requirements

- Node.js (for running the generation script)
- Fantasticon: `npm install -g fantasticon`

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
