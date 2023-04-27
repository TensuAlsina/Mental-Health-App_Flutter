import 'package:flutter/material.dart';

import 'package:mentalhealthapp/ui/views/tabs/category/category_view.dart';
import 'package:mentalhealthapp/ui/views/tabs/person/chat_view.dart';

import 'package:stacked/stacked.dart';

import '../tabs/home/home_view.dart';
import 'landing_viewmodel.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LandingViewModel>.reactive(
      viewModelBuilder: () => LandingViewModel(),
      builder: (
        BuildContext context,
        LandingViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: model.currentIndex,
              onTap: model.setIndex,
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.grid_view_rounded), label: "Category"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat_bubble), label: "Chats"),
              ]),
          body: getViewForIndex(model.currentIndex),
        );
      },
    );
  }

  Widget getViewForIndex(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const CategoryView();
      case 2:
        return const ChatsView();
      default:
        return const HomeView();
    }
  }
}
