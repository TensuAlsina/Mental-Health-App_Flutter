import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../../../ui_helpers/app_colors.dart';
import '../../../ui_helpers/shared_styles.dart';
import '../../../widgets/dumb_widgets/emotion_category.dart';
import '../../../widgets/dumb_widgets/exercise_container.dart';

import '../../../widgets/dumb_widgets/name_notification.dart';
import '../../../widgets/dumb_widgets/search_container.dart';
import '../../../widgets/dumb_widgets/show_case_widget.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.5.w),
                  child: Column(
                    children: [
                      const NameWithNotification(),
                      SizedBox(
                        height: 2.5.h,
                      ),
                      const SearchContainer(),
                      SizedBox(
                        height: 2.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "How do you feel?",
                            style: ktsHowDoTextStyle,
                          ),
                          const Icon(
                            Icons.more_horiz,
                            color: kcWhiteColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          EmotionCategoryContainer(
                            emotionId: "\u{1f614}",
                            emotionType: "Badly",
                          ),
                          EmotionCategoryContainer(
                            emotionId: "\u{1f610}",
                            emotionType: "Fine",
                          ),
                          EmotionCategoryContainer(
                            emotionId: "\u{1f642}",
                            emotionType: "Well",
                          ),
                          EmotionCategoryContainer(
                            emotionId: "\u{1f603}",
                            emotionType: "Excellent",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                Expanded(
                    child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: Center(
                    child: Column(
                      children: [
                        const ShowCaseWidget(
                          textToShow: "Excercises",
                        ),
                        SizedBox(
                          height: 2.5.h,
                        ),
                        Expanded(
                            child: ListView(children: const [
                          ExercisesContainer(
                            icon: Icons.favorite,
                            exerciseName: "Speaking Skils",
                            numberofExercise: 14,
                            color: Colors.orange,
                          ),
                          ExercisesContainer(
                            icon: Icons.person,
                            exerciseName: "Reading Skils",
                            numberofExercise: 8,
                            color: Colors.green,
                          ),
                          ExercisesContainer(
                            icon: Icons.star,
                            exerciseName: "Writing Skils",
                            numberofExercise: 20,
                            color: Colors.pink,
                          ),
                        ]))
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
