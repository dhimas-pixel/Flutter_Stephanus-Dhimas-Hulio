// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:section_26/main.dart';
import 'package:section_26/screen/home_page.dart';
import 'package:section_26/screen/test_page.dart';
import 'package:section_26/stores/food_viewModel.dart';

void main() {
  group("Food", () {
    testWidgets("screen homepage", (WidgetTester tester) async {
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => FoodViewModel(),
            ),
          ],
          child: const MaterialApp(
            home: Homepage(),
          ),
        ),
      );
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text("Food Menu"), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
    });

    testWidgets("Page Error", (WidgetTester tester) async {
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => FoodViewModel(),
            ),
          ],
          child: const MaterialApp(
            home: TestPage(),
          ),
        ),
      );
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.byType(AppBar), findsOneWidget);
    });
  });
}
