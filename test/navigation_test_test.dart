import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/main.dart';

void main() {
  testWidgets('Переход на второй экран работает', (WidgetTester t) async {
    await t.pumpWidget(MaterialApp(home: MyApp()));
    await t.tap(find.byKey(Key('list')));
    await t.pumpAndSettle();
    expect(find.byKey(Key('list')), findsOneWidget);
  });
}
