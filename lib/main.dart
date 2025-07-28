import 'package:flutter/material.dart';
import 'package:widget_test/router/router.dart';

void main() {
  runApp(MaterialApp(routes: router, initialRoute: '/'));
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
            key: Key('counter'),
            onPressed: () {
              Navigator.pushNamed(context, '/counter');
            },
            child: Text('counter'),
          ),
          ElevatedButton(
            key: Key('login_form'),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text('login form'),
          ),
          ElevatedButton(
            key: Key('list'),
            onPressed: () {
              Navigator.pushNamed(context, '/scrol');
            },
            child: Text('list'),
          ),
          ElevatedButton(
            key: Key('friest_screen'),
            onPressed: () {
              Navigator.pushNamed(context, '/friest');
            },
            child: Text('FriestScreen'),
          ),
        ],
      ),
    );
  }
}
