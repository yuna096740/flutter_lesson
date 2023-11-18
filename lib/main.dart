import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

class TweetTitle extends StatelessWidget {
  const TweetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Image.asset(
              'assets/images/avotor.png',
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('yuna @ flutter lesson'),
                  SizedBox(width: 8),
                  Text('2023/11/18'),
                ],
              ),
              SizedBox(height: 4),
              Text('練習中です'),
              TweetIcons(),
            ],
          ),
        ],
      ),
    );
  }
}

List<String> tweetIconList = [
  'chat_bubble_outline',
  'share_sharp',
  'favorite_border',
  'send_outlined',
];

class TweetIcons extends StatelessWidget {
  const TweetIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < tweetIconList.length; i++)
          IconButton(
            onPressed: () {},
            icon: Icon(_getIconData(tweetIconList[i])),
          ),
      ],
    );
  }
}

IconData _getIconData(String iconName) {
  switch (iconName) {
    case 'chat_bubble_outline':
      return Icons.chat_bubble_outline;
    case 'share_sharp':
      return Icons.share_sharp;
    case 'favorite_border':
      return Icons.favorite_border;
    case 'send_outlined':
      return Icons.send_outlined;
    default:
      return Icons.error_outline;
  }
}
