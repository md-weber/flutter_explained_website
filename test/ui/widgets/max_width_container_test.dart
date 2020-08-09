import 'package:flutter/material.dart';
import 'package:flutter_explained_website/ui/widgets/max_width_container.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("MaxWidthContainer", () {
    testWidgets("should only allow a certain amount of width", (tester) async {
      // Assemble
      tester.binding.window.physicalSizeTestValue = const Size(3200, 600);
      tester.binding.window.devicePixelRatioTestValue = 1.0;

      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

      await tester.pumpWidget(
        MaterialApp(
          home: MaxWidthContainer(
            child: Center(child: Container()),
          ),
        ),
      );

      // ACT
      final Size size = tester.getSize(find.byType(Container));

      // ASSERT
      expect(size.width, 1200);
    });

    testWidgets("should take the full screen width as the size",
        (tester) async {
      // Assemble
      tester.binding.window.physicalSizeTestValue = const Size(800, 600);
      tester.binding.window.devicePixelRatioTestValue = 1.0;

      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);

      await tester.pumpWidget(
        MaterialApp(
          home: MaxWidthContainer(
            child: Center(child: Container()),
          ),
        ),
      );

      // ACT
      final Size size = tester.getSize(find.byType(Container));

      // ASSERT
      expect(size.width, 800);
    });
  });
}
