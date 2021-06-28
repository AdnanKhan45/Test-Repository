import 'package:flutter/material.dart';
import 'package:test_project/pages/seller_transaction_page.dart';
import 'package:test_project/scrim_app/pages/Scrim_singleItemView.dart';

import 'pages/buyer_transaction_page.dart';
import 'scrim_app/pages/Scrim_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "test app",
      home: ScrimHomePage(),
    );
  }
}
