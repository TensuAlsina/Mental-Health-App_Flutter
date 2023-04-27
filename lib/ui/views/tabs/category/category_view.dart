import 'package:flutter/material.dart';
import 'package:mentalhealthapp/ui/ui_helpers/app_colors.dart';
import 'package:mentalhealthapp/ui/widgets/dumb_widgets/name_notification.dart';
import 'package:mentalhealthapp/ui/widgets/dumb_widgets/search_container.dart';
import 'package:mentalhealthapp/ui/widgets/dumb_widgets/show_case_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../../../ui_helpers/shared_styles.dart';
import 'category_viewmodel.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryViewModel>.reactive(
      viewModelBuilder: () => CategoryViewModel(),
      builder: (
        BuildContext context,
        CategoryViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.9.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    const NameWithNotification(),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    const SearchContainer(),
                    SizedBox(
                      height: 2.5.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Expanded(
                  child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                color: Colors.grey[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ShowCaseWidget(textToShow: "Category"),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CustomCategoryContainer(
                          innerText: "RelationShip",
                          color: Colors.indigo,
                        ),
                        CustomCategoryContainer(
                          innerText: "Career",
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CustomCategoryContainer(
                          innerText: "Education",
                          color: Colors.orange,
                        ),
                        CustomCategoryContainer(
                          innerText: "Other",
                          color: Colors.pink,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    const ShowCaseWidget(textToShow: "Consultant"),
                    SizedBox(
                      height: 2.h,
                    ),
                    Expanded(
                        child: ListView(
                      children: const [
                        DoctorsContaner(
                          icon: Icons.person,
                          doctorsName: "Tinsae Hailu",
                        ),
                        DoctorsContaner(
                          icon: Icons.person,
                          doctorsName: "Kebede Hailu",
                        ),
                        DoctorsContaner(
                          icon: Icons.person,
                          doctorsName: "Siyum Abebe",
                        ),
                        DoctorsContaner(
                          icon: Icons.person,
                          doctorsName: "Abiy Ahmed",
                        ),
                      ],
                    ))
                  ],
                ),
              ))
            ],
          )),
        );
      },
    );
  }
}

class CustomCategoryContainer extends StatelessWidget {
  final Color color;
  final String innerText;
  const CustomCategoryContainer({
    Key? key,
    required this.color,
    required this.innerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kbdCategoryContainerDecoration(color),
      height: 10.5.h,
      width: 43.w,
      child: Center(
        child: Text(
          innerText,
          style: ktsCategoryTextStyle,
        ),
      ),
    );
  }
}

class DoctorsContaner extends StatelessWidget {
  final IconData icon;
  final String doctorsName;

  const DoctorsContaner({
    super.key,
    required this.icon,
    required this.doctorsName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kbdExcersiceBoxDecoration,
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 1.2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.indigo,
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
                    "Dr. $doctorsName",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    "Education",
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
    );
  }
}
