import 'package:flutter/material.dart';

class ScrollableList extends StatelessWidget {
  const ScrollableList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        key: Key('list'),
        itemCount: 100,
        itemBuilder:
            (context, index) =>
                ListTile(key: Key('Item_$index'), title: Text('Item $index')),
      ),
    );
  }
}
