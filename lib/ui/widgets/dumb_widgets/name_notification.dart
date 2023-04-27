import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../ui_helpers/app_colors.dart';
import '../../ui_helpers/shared_styles.dart';

class NameWithNotification extends StatelessWidget {
  const NameWithNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Tinsae!",
              style: ktsNamePartTextStyle,
            ),
            SizedBox(
              height: 0.8.h,
            ),
            Text(
              "23 Jan, 2021",
              style: ktsDatePartTextStyle,
            ),
          ],
        ),
        Container(
          decoration: kbdNotificationBoxDecoration,
          padding: const EdgeInsets.all(12),
          child: const Icon(
            Icons.settings,
            color: kcWhiteColor,
          ),
        )
      ],
    );
  }
}
