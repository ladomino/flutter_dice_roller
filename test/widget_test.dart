// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:first_app/dice_roller.dart';
import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
 
  testWidgets('App renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: GradientContainer(
       Color.fromARGB(255, 33, 5, 109),
       Color.fromARGB(255, 68, 21, 149),
    )));

    // Verify that the GradientContainer is present
    expect(find.byType(GradientContainer), findsOneWidget);

    // Verify that the DiceRoller is present within the GradientContainer
    expect(find.byType(DiceRoller), findsOneWidget);

    // Verify that the initial dice image is present
    expect(find.byType(Image), findsOneWidget);

    // Tap the button to roll the dice
    await tester.tap(find.byType(TextButton));
    await tester.pump();

    // Verify that the dice image is still present after rolling
    expect(find.byType(Image), findsOneWidget);
  }); 
  
}
