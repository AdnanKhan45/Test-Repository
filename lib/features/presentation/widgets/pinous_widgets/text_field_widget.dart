
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String name;
  final Icon icon;


  const TextFieldWidget({Key? key, required this.name, required this.icon}) : super(key: key);

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
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: name,
          hintStyle: TextStyle(color: Colors.grey[500]),
          border: InputBorder.none,
          prefixIcon: icon,
        ),
      ),
    );
  }

}
