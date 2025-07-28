import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: Center(child: Text('Привет, $name', key: const Key('second_text'))),
    );
  }
}
