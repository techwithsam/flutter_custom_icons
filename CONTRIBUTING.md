# Contributing to Flutter Custom Icons

Thank you for considering contributing to Flutter Custom Icons! 🎉

## How to Contribute

### Adding New Icons

1. **Find Quality SVG Icons**
   - Use free, open-source icon sets
   - Ensure icons are monochrome (single color) for best results
   - Check the license to ensure it allows redistribution

2. **Add SVG Files**
   - Place SVG files in `assets/icons/`
   - Use descriptive, lowercase names with underscores (e.g., `user_profile.svg`)
   - Avoid spaces or special characters in filenames

3. **Generate the Font**
   ```bash
   node tool/generate_icons.js
   ```

4. **Test Your Icons**
   - Run the example app
   - Verify icons render correctly at different sizes
   - Check that icon names are valid Dart identifiers

5. **Submit a Pull Request**
   - Create a branch for your changes
   - Include a description of the icons you added
   - Reference any relevant issues

### Code Quality

- Follow Dart style guidelines
- Run `flutter analyze` before submitting
- Ensure no breaking changes to existing icons

### Icon Guidelines

- **Size**: SVG icons should ideally be 24x24 or scalable
- **Color**: Monochrome only (single color, preferably black)
- **Format**: Clean SVG without unnecessary attributes
- **License**: Must be freely distributable (MIT, Apache, CC0, etc.)

## Reporting Issues

If you find a bug or have a feature request:

1. Check if the issue already exists
2. Create a new issue with a clear title and description
3. Include steps to reproduce (if applicable)
4. Add relevant labels

## Development Setup

1. Clone the repository
   ```bash
   git clone https://github.com/techwithsam/flutter_custom_icons.git
   cd flutter_custom_icons
   ```

2. Install dependencies
   ```bash
   flutter pub get
   npm install -g fantasticon
   ```

3. Run the example
   ```bash
   cd example
   flutter run
   ```

## Questions?

Feel free to open an issue for questions or discussions.

Thank you for contributing! 🚀
