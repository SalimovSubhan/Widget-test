import 'package:flutter/material.dart';
import 'package:widget_test/pages/counter_widget.dart';
import 'package:widget_test/pages/login_form.dart';
import 'package:widget_test/pages/scrollable_list.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CounterWidget()),
              );
            },
            child: Text('counter'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginForm()),
              );
            },
            child: Text('login form'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScrollableList()),
              );
            },
            child: Text('list'),
          ),
        ],
      ),
    );
  }
}
