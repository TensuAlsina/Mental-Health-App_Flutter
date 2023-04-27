import 'package:flutter/material.dart';
import 'package:mentalhealthapp/ui/ui_helpers/app_colors.dart';
import 'package:mentalhealthapp/ui/widgets/dumb_widgets/search_container.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import '../../../ui_helpers/shared_styles.dart';
import 'chat_viewmodel.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatsViewModel>.reactive(
      viewModelBuilder: () => ChatsViewModel(),
      builder: (
        BuildContext context,
        ChatsViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          backgroundColor: Colors.blue[900],
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chats",
                    style: ktsNamePartTextStyle.copyWith(fontSize: 25.sp),
                  ),
                  SizedBox(
                    height: 1.2.h,
                  ),
                  const SearchContainer(),
                  SizedBox(
                    height: 4.h,
                  ),
                  Expanded(
                      child: ListView(
                    children: const [
                      CustomChatContainer(
                        doctorsName: "Tom Dane",
                        lastMessage: "How Can i help you",
                        lastSentTime: "14:00",
                      ),
                      CustomChatContainer(
                        doctorsName: "Nejat Ahmed",
                        lastMessage: "Are you Okay",
                        lastSentTime: "07:00",
                      ),
                      CustomChatContainer(
                        doctorsName: "Abebe Kebede",
                        lastMessage: "Can we Meet",
                        lastSentTime: "17:208",
                        unReadMessageNumber: 3,
                      ),
                      CustomChatContainer(
                        doctorsName: "Jone Mike",
                        lastMessage: "I will \u{1f603}",
                        lastSentTime: "03:08",
                        unReadMessageNumber: 7,
                      ),
                      CustomChatContainer(
                        doctorsName: "Seid Kemal",
                        lastMessage: "Thank you sir \u{1f603}",
                        lastSentTime: "14:39",
                        unReadMessageNumber: 1,
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CustomChatContainer extends StatelessWidget {
  final String doctorsName;
  final String lastMessage;
  final String lastSentTime;
  final int? unReadMessageNumber;
  const CustomChatContainer({
    Key? key,
    required this.doctorsName,
    required this.lastMessage,
    required this.lastSentTime,
    this.unReadMessageNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
      margin: EdgeInsets.only(bottom: 1.h),
      decoration: kbdChatWithDoctorsBoxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 3.5.h,
              ),
              SizedBox(
                width: 2.5.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. $doctorsName",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: kcWhiteColor),
                  ),
                  Text(
                    lastMessage,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white60,
                        fontSize: 10.sp),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Text(
                lastSentTime,
                style: const TextStyle(color: Colors.white54),
              ),
              SizedBox(
                height: 0.8.h,
              ),
              unReadMessageNumber == null
                  ? const SizedBox()
                  : CircleAvatar(
                      radius: 10,
                      child: Text(unReadMessageNumber.toString()),
                    )
            ],
          )
        ],
      ),
    );
  }
}
