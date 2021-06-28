import 'package:flutter/material.dart';
import 'package:test_project/pages/seller_transaction_page.dart';

import 'pages/buyer_transaction_page.dart';

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
      home: BuyerTransactionPage(),
    );
  }
}
