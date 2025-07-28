import 'package:widget_test/main.dart';
import 'package:widget_test/pages/counter_widget.dart';
import 'package:widget_test/pages/friest_screen.dart';
import 'package:widget_test/pages/login_form.dart';
import 'package:widget_test/pages/scrollable_list.dart';
import 'package:widget_test/pages/second_screen.dart';

final router = {
  '/': (context) => MyApp(),
  '/counter': (context) => CounterWidget(),
  '/login': (context) => LoginForm(),
  '/scrol': (context) => ScrollableList(),
  '/friest': (context) => FriestScreen(),
  '/second': (constext) => SecondScreen(),
};
