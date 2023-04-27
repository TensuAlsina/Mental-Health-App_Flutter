import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../ui_helpers/app_colors.dart';
import '../../ui_helpers/shared_styles.dart';

class ExercisesContainer extends StatelessWidget {
  final IconData icon;
  final String exerciseName;
  final int numberofExercise;
  final Color color;
  const ExercisesContainer(
      {super.key,
      required this.icon,
      required this.exerciseName,
      required this.numberofExercise,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.2.h),
      child: Container(
        decoration: kbdExcersiceBoxDecoration,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding: const EdgeInsets.all(16),
                      color: color,
                      child: Icon(
                        icon,
                        color: kcWhiteColor,
                      )),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exerciseName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Text(
                      "$numberofExercise Exercises ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14.sp),
                    )
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
