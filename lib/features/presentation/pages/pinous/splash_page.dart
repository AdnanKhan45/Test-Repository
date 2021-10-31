import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("lib/assets/logo.png", width: 180, height: 180,),
          ),
          SizedBox(height: 30,),
          Text("Pinous", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.deepOrangeAccent),)
        ],
      ),
    );
  }
}
