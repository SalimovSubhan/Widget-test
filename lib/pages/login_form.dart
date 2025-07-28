import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _cantroler = TextEditingController();
  String _message = '';

  void _submit() {
    setState(() {
      _message = _cantroler.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(key: Key('username_field'), controller: _cantroler),
          ElevatedButton(
            key: Key('submit_button'),
            onPressed: _submit,
            child: Text('Отправить'),
          ),
          Text(_message, key: Key('result_message')),
        ],
      ),
    );
  }
}
