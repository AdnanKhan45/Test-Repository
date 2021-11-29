import 'package:flutter/material.dart';
import 'package:khaata_app/presentation/pages/cash_in_page.dart';
import 'package:khaata_app/presentation/pages/page_1.dart';
import 'package:khaata_app/presentation/pages/page_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Khaata App",
      home: CashInPage(),
    );
  }
}
