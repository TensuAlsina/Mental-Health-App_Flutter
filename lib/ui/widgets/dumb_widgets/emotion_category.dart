import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../ui_helpers/app_colors.dart';

import 'emoji_icon_face.dart';

class EmotionCategoryContainer extends StatelessWidget {
  final String emotionId;
  final String emotionType;
  const EmotionCategoryContainer({
    Key? key,
    required this.emotionId,
    required this.emotionType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmojiIconFace(
          emojiIconFace: emotionId,
        ),
        SizedBox(
          height: 0.5.h,
        ),
        Text(
          emotionType,
          style: const TextStyle(
            color: kcWhiteColor,
          ),
        )
      ],
    );
  }
}
