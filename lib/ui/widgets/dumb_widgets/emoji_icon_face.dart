import 'package:flutter/material.dart';

import '../../ui_helpers/shared_styles.dart';

class EmojiIconFace extends StatelessWidget {
  final String emojiIconFace;

  const EmojiIconFace({super.key, required this.emojiIconFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kbdEmojiIconBoxDecoration,
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          emojiIconFace,
          style: ktsEmojiTextStyle,
        ),
      ),
    );
  }
}
