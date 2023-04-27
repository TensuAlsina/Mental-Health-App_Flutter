import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'ui/views/landing/landing_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.blue[800],
          ),
          home: const LandingView(),
        );
      },
    );
  }
}
