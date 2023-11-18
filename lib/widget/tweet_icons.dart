import 'package:flutter/material.dart';

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
