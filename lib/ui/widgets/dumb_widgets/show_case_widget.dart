import 'package:flutter/material.dart';

import '../../ui_helpers/shared_styles.dart';

class ShowCaseWidget extends StatelessWidget {
  final String textToShow;
  const ShowCaseWidget({
    Key? key,
    required this.textToShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textToShow,
          style: ktsExcerciseTextStyle,
        ),
        const Icon(Icons.more_horiz)
      ],
    );
  }
}
