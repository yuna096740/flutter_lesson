import 'package:flutter/material.dart';
import 'tweet_icons.dart';

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
