import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_test/pages/counter_widget.dart';

void main() {
  testWidgets('Кнопка увеличивает счетчик', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: CounterWidget()));
    expect(find.text('0'), findsOneWidget);
    await tester.tap(find.byKey(Key('increment')));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}
