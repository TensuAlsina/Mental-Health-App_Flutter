import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';
// All App Level Box Decorations

BoxDecoration kbdNotificationBoxDecoration = BoxDecoration(
  color: Colors.blue[600],
  borderRadius: BorderRadius.circular(12),
);
BoxDecoration kbdSearchBoxDecoration = BoxDecoration(
  color: Colors.blue[600],
  borderRadius: BorderRadius.circular(12),
);

BoxDecoration kbdEmojiIconBoxDecoration = BoxDecoration(
  color: Colors.blue[600],
  borderRadius: BorderRadius.circular(12),
);
BoxDecoration kbdExcersiceBoxDecoration = BoxDecoration(
  color: kcWhiteColor,
  borderRadius: BorderRadius.circular(12),
);

BoxDecoration kbdCategoryContainerDecoration(Color color) => BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
    );

BoxDecoration kbdChatWithDoctorsBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15), color: Colors.indigo[400]);
// All App Level TextStyles

TextStyle ktsNamePartTextStyle = TextStyle(
  color: kcWhiteColor,
  fontSize: 24.sp,
  fontWeight: FontWeight.bold,
);

TextStyle ktsDatePartTextStyle = TextStyle(
  color: Colors.blue[200],
);
TextStyle ktsHowDoTextStyle = TextStyle(
  color: kcWhiteColor,
  fontSize: 18.sp,
  fontWeight: FontWeight.bold,
);

TextStyle ktsEmojiTextStyle = TextStyle(
  fontSize: 28.sp,
);
TextStyle ktsExcerciseTextStyle =
    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold);

TextStyle ktsCategoryTextStyle = TextStyle(
  color: kcWhiteColor,
  fontWeight: FontWeight.bold,
  fontSize: 15.sp,
);
