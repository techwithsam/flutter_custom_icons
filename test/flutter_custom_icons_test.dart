import 'package:flutter/widgets.dart';
import 'package:flutter_custom_icons/flutter_custom_icons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Iconixto icons', () {
    test('icons should have correct font family', () {
      expect(Iconixto.home.fontFamily, 'iconixto');
      expect(Iconixto.link.fontFamily, 'iconixto');
      expect(Iconixto.cog1.fontFamily, 'iconixto');
    });

    test('icons should have unique codepoints', () {
      final codepoints = <int>{
        Iconixto.home.codePoint,
        Iconixto.home2.codePoint,
        Iconixto.home3.codePoint,
        Iconixto.link.codePoint,
        Iconixto.cog1.codePoint,
      };

      // All codepoints should be unique
      expect(codepoints.length, 5);
    });

    test('icons should be IconData type', () {
      expect(Iconixto.home, isA<IconData>());
      expect(Iconixto.link, isA<IconData>());
      expect(Iconixto.zoomPlus, isA<IconData>());
    });
  });
}
