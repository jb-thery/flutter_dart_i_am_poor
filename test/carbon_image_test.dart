import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dart_i_am_poor/components/carbon_image.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CarbonImage', () {
    testWidgets('It should have custom size', (WidgetTester tester) async {
      double randomSize = Random().nextDouble() + 100;

      await tester.pumpWidget(
        Center(
          child: CarbonImage(
            size: randomSize,
          ),
        ),
      );

      final Size size = tester.getSize(find.byType(AnimatedContainer));

      expect(size.width, equals(randomSize));
    });
  });
}
