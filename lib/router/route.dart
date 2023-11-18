import 'package:flutter/material.dart';

class MyRoute extends StatelessWidget {
  const MyRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'yuna @ janken app',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
