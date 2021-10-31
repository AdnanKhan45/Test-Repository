
import 'package:flutter/material.dart';
import 'package:test_project/features/presentation/pages/pinous/focus_on_your_lesson_easily_page.dart';
import 'package:test_project/features/presentation/pages/pinous/home_page.dart';
import 'package:test_project/features/presentation/pages/pinous/observe_yourself_page.dart';
import 'package:test_project/features/presentation/pages/pinous/sign_in_page.dart';
import 'package:test_project/features/presentation/pages/pinous/splash_page.dart';

import 'package:test_project/features/presentation/pages/pinous/track_your_progress_page.dart';
import 'package:test_project/features/presentation/pages/scroll_animations/scroll_animations_home_page.dart';
import 'package:test_project/features/presentation/pages/weather/next7Days_page.dart';
import 'package:test_project/features/presentation/pages/weather/weather_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: ScrollAnimationsHomePage(),
    );
  }
}
