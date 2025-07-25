// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_test/widgets/counter_widget.dart';

void main() {
  testWidgets('Кнопка увеличивает счетчик', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: CounterWidget())));
    expect(find.text('0'), findsOneWidget);
    await tester.tap(find.byKey(Key('increment')));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}
