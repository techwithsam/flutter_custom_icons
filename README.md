# Flutter Custom Icons

|             Iconixto Icons            |             Feather Icons           |             Fluent Icons           |
| :----------------------------------: | :----------------------------------: | :----------------------------------: |
| <a title="Iconixto" href="https://github.com/techwithsam/flutter_custom_icons"><img src="https://raw.githubusercontent.com/techwithsam/flutter_custom_icons/main/screenshots/iconixto.png" width="100%"/></a> | <a title="Feather" href="https://github.com/techwithsam/flutter_custom_icons"><img src="https://raw.githubusercontent.com/techwithsam/flutter_custom_icons/main/screenshots/feather.png" width="100%"/></a> | <a title="Fluent" href="https://github.com/techwithsam/flutter_custom_icons"><img src="https://raw.githubusercontent.com/techwithsam/flutter_custom_icons/main/screenshots/fluent.png" width="100%"/></a> |

<p align="center">
  <b>Curated free icons • Lightweight font packs • Zero bloat</b>
</p>

<p align="center">
  <a href="#installation">Installation</a> •
  <a href="#usage">Usage</a> •
  <a href="#icon-families">Icon Families</a> •
  <a href="#examples">Examples</a>
</p>

---

## ✨ Features

- 🎨 **500+ Icons** - Three curated icon families in one package
- ⚡ **Lightweight** - Bundled as `.ttf` fonts, minimal app size impact
- 🔥 **Easy to Use** - Simple API: `Icon(Iconixto.home)`, `Icon(FeatherIcons.activity)`, `Icon(FluentIcons.add)`
- 🎯 **Fully Themeable** - Customize color, size, and styling
- 📦 **100% Free** - MIT licensed, ready for commercial use

## 📊 Icon Families

| Family | Count | Style | Usage |
|--------|-------|-------|-------|
| **Iconixto** | 1500+ | Modern, curated | `Icon(Iconixto.home)` |
| **FeatherIcons** | 280+ | Classic, minimal | `Icon(FeatherIcons.activity)` |
| **FluentIcons** | 3000+ | Modern, classic | `Icon(FluentIcons.add)` |

## 📦 Installation

```yaml
dependencies:
  flutter_custom_icons: ^0.0.2
```

```bash
flutter pub get
```

## 🚀 Usage

```dart
import 'package:flutter_custom_icons/flutter_custom_icons.dart';

// Iconixto usage
Icon(Iconixto.home)

// FeatherIcons usage
Icon(FeatherIcons.activity)

// Fluent usage
Icon(FluentIcons.add)
```

## 📸 Examples

Check the [example app](example/) for a complete gallery of all available icons.

## 🛠️ Adding New Icons

1. Add SVG files to `assets/icons/`
1. Run generation script:

```bash
node tool/generate_icons.js
```

1. Test in the example app

The script uses [Fantasticon](https://github.com/tancredi/fantasticon) to convert SVGs to `.ttf` font and generates Dart classes automatically.

## 📝 License

MIT License - See [LICENSE](LICENSE) for details.

Icons sourced from: [Heroicons](https://heroicons.com/), [Lucide](https://lucide.dev/), [Feather Icons](https://feathericons.com/)

## 🤝 Contributing

Contributions welcome! Fork, add your icons, and submit a PR.

## 💬 Support

Issues? Questions? [Open an issue](https://github.com/techwithsam/flutter_custom_icons/issues)

---

<div align="center">

Made with ❤️ for the Flutter community

</div>
