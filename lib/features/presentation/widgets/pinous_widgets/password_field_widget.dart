
import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatelessWidget {
  final String name;
  final Icon suffixIcon;
  final Icon prefixIcon;


  const PasswordFieldWidget({Key? key, required this.name, required this.suffixIcon, required this.prefixIcon, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8)
      ),
      child: TextField(
        obscureText: true,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: name,
          hintStyle: TextStyle(color: Colors.grey[500]),
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon
        ),
      ),
    );
  }

}
