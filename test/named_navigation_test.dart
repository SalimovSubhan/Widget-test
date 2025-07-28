import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/router/router.dart';

void main() {
  testWidgets('Переход по имени и проверка аргумента', (WidgetTester t) async {
    await t.pumpWidget(MaterialApp(routes: router, initialRoute: '/friest'));
    await t.tap(find.byKey(Key('open_second_named')));
    await t.pumpAndSettle();
    expect(find.byKey(Key('second_text')), findsOneWidget);
    expect(find.text('Привет, Бро'), findsOneWidget);
  });
}
