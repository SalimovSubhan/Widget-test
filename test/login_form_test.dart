import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/pages/login_form.dart';

void main() {
  testWidgets('Показывает приветствие после ввода текста', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(MaterialApp(home: LoginForm()));
    await tester.enterText(find.byKey(Key('username_field')), 'Бро');
    await tester.tap(find.byKey(Key('submit_button')));
    await tester.pump();
    expect(find.text('Бро'), findsWidgets);
  });
}
