import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../ui_helpers/app_colors.dart';
import '../../ui_helpers/shared_styles.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kbdSearchBoxDecoration,
      padding: const EdgeInsets.all(17),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: kcWhiteColor,
          ),
          SizedBox(
            width: 1.5.w,
          ),
          const Text(
            "Search",
            style: TextStyle(color: kcWhiteColor),
          ),
        ],
      ),
    );
  }
}
