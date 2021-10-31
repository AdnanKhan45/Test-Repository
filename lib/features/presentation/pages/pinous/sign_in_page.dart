import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;

import 'package:test_project/features/presentation/widgets/pinous_widgets/paint_2_widget.dart';
import 'package:test_project/features/presentation/widgets/pinous_widgets/password_field_widget.dart';
import 'package:test_project/features/presentation/widgets/pinous_widgets/text_field_widget.dart';


class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              child: CustomPaint(
                size: Size(400, (350 * 1.6666666666666667).toDouble()),
                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 15,
            child: Container(width: 240, height: 230, child: SvgPicture.asset('lib/assets/sign_in.svg'),)
          ),
          Positioned(
            top: 245,
            left: 10,
            right: 10,
            child: Column(
              children: [
                Text(
                  "Welcome to Pinous",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  "Sign In",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.deepOrange),
                ),
                SizedBox(height: 15),
                TextFieldWidget(
                  icon: Icon(Icons.account_circle, color: Colors.grey[500]),
                  name: "Name Surname",
                ),
                SizedBox(height: 10),
                TextFieldWidget(
                  icon: Icon(
                    Icons.attach_email_outlined,
                    color: Colors.grey[500],
                  ),
                  name: "Email",
                ),
                SizedBox(height: 10),
                PasswordFieldWidget(
                  name: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey[500]),
                  prefixIcon: Icon(Icons.lock, color: Colors.grey[500]),
                ),
                SizedBox(height: 10),
                PasswordFieldWidget(
                  name: "Confirm Password",
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey[500]),
                  prefixIcon: Icon(Icons.lock, color: Colors.grey[500]),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Next",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have you got another account? ",
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Sign In!",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.deepOrangeAccent),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
