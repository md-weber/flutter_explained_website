import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_explained_website/ui/widgets/responsive_widget.dart';

void main() {
  const String _mobileText = "mobile";
  const String _tabletText = "tablet";
  const String _desktopText = "desktop";

  group('ResponsiveWidgetTest -', () {
    testWidgets(
        'Given mobile body When ResponsiveWidget is used Then contain mobile Text widget',
        (tester) async {
      // ASSEMBLE
      tester.binding.window.physicalSizeTestValue = const Size(600, 600);
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

      await tester.pumpWidget(
        const MaterialApp(
          home: ResponsiveWidget(
            mobileBody: Text(_mobileText),
            tabletBody: Text(_tabletText),
            desktopBody: Text(_desktopText),
          ),
        ),
      );

      // ACT
      final textFinder = find.text(_mobileText);

      // ASSERT
      expect(textFinder, findsOneWidget);
    });

    testWidgets(
        'Given tablet body When ResponsiveWidget is used Then contain tablet Text widget',
        (tester) async {
      // ASSEMBLE
      tester.binding.window.physicalSizeTestValue =
          const Size(kTabletBreakpoint, 600);
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

      await tester.pumpWidget(
        const MaterialApp(
          home: ResponsiveWidget(
            mobileBody: Text(_mobileText),
            tabletBody: Text(_tabletText),
            desktopBody: Text(_desktopText),
          ),
        ),
      );

      // ACT
      final textFinder = find.text(_tabletText);

      // ASSERT
      expect(textFinder, findsOneWidget);
    });

    testWidgets(
        'Given desktop body When ResponsiveWidget is used Then contain desktop Text widget',
        (tester) async {
      // ASSEMBLE
      tester.binding.window.physicalSizeTestValue =
          const Size(kDesktopBreakpoint, 600);
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

      await tester.pumpWidget(
        const MaterialApp(
          home: ResponsiveWidget(
            mobileBody: Text(_mobileText),
            tabletBody: Text(_tabletText),
            desktopBody: Text(_desktopText),
          ),
        ),
      );

      // ACT
      final textFinder = find.text(_desktopText);

      // ASSERT
      expect(textFinder, findsOneWidget);
    });
  });
}
