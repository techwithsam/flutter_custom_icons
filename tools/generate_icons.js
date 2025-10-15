// Automation script for generating icon font and Dart class
// Usage: node tools/generate_icons.js

const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

const ICONS_DIR = path.resolve(__dirname, '../assets/icons');
const FONTS_DIR = path.resolve(__dirname, '../assets/fonts');
const FONT_NAME = 'iconixto';
const OUTPUT_JSON = path.join(FONTS_DIR, `${FONT_NAME}.json`);
const OUTPUT_TTF = path.join(FONTS_DIR, `${FONT_NAME}.ttf`);
const DART_CLASS_PATH = path.resolve(__dirname, '../lib/src/iconixto_icons.dart');

// 1. Run Fantasticon to generate font and mapping
console.log('Generating font and mapping with Fantasticon...');
execSync(`npx fantasticon ${ICONS_DIR} --output ${FONTS_DIR} --name ${FONT_NAME} --font-types ttf --asset-types json`, { stdio: 'inherit' });

// 2. Read mapping and generate Dart class
console.log('Generating Dart icon class...');
const mapping = JSON.parse(fs.readFileSync(OUTPUT_JSON, 'utf8'));

// Convert a kebab/underscore/space name to lowerCamelCase suitable for Dart identifiers
function toCamelCase(name)
{
   return name
      .replace(/[^a-zA-Z0-9_\- ]/g, '') // strip weird chars
      .replace(/[\- _]+(.)/g, (_, chr) => chr.toUpperCase())
      .replace(/^(\d)/, '_$1'); // prefix leading digits
}

const dartHeader = `import 'package:flutter/widgets.dart';

class IconixtoData extends IconData {
  const IconixtoData(super.code)
      : super(fontFamily: '${FONT_NAME}', fontPackage: 'flutter_custom_icons');
}

class Iconixto {
  Iconixto._();

`;

let dartIcons = '';
for (const [iconName, codepoint] of Object.entries(mapping))
{
   const dartName = toCamelCase(iconName);
   const hex = Number(codepoint).toString(16);
   dartIcons += `  static const ${dartName} = IconixtoData(0x${hex});\n`;
}

const dartFooter = '}\n';

fs.writeFileSync(DART_CLASS_PATH, dartHeader + dartIcons + dartFooter);
console.log('Done!');

console.log(`\nFont file: ${OUTPUT_TTF}\nDart class: ${DART_CLASS_PATH}`);
