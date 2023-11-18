import 'package:flutter/material.dart';
import 'widget/tweet_title.dart';

class TweetApp extends StatelessWidget {
  const TweetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'yuna @ flutter lesson',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 10; i++) TweetTitle(),
            ],
          ),
        ),
      ),
    );
  }
}
