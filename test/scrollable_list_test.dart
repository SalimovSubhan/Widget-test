import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/pages/scrollable_list.dart';

void main() {
  testWidgets('Скроллим вниз и находим элемент', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ScrollableList()));
    expect(find.text('Item 99'), findsNothing);
    await tester.drag(find.byKey(Key('list')), Offset(0, -30000));
    await tester.pumpAndSettle();
    expect(find.byKey(Key('Item_99')), findsOneWidget);
    expect(find.text('Item 99'), findsOneWidget);
  });
}
