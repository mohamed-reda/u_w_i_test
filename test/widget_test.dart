// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:u_w_i_test/main.dart';

void main() {
  testWidgets('Reverse string widget test', (WidgetTester tester) async {
//    1 determine the page
    await tester.pumpWidget(MyApp());
//   2 determine input widget
    var textField = find.byType(TextField);
//    Verify if we have one widget like textField
    expect(textField, findsNWidgets(1));
//    add text to textField
    await tester.enterText(textField, 'Hello');
//    Verify if we add it
    expect(find.text('Hello'), findsOneWidget);
//    determine button, verify it
    var button = find.text('Reverse');
    expect(button, findsOneWidget);
//    tap button
    await tester.tap(button);
//    trigger a frame
    await tester.pump();
//    Verify the result
    expect(find.text("olleH"), findsOneWidget);
  });
}
//flutter test
