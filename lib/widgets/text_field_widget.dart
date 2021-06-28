import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  const TextFieldWidget({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "$text"
      ),
    );
  }
}
