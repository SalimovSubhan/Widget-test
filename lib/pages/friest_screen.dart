import 'package:flutter/material.dart';

class FriestScreen extends StatelessWidget {
  const FriestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          key: Key('open_second_named'),
          onPressed: () {
            Navigator.pushNamed(context, '/second', arguments: 'Бро');
          },
          child: const Text('Перейти на второй экран'),
        ),
      ),
    );
  }
}
