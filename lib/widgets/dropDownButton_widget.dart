import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  @override
  _DropDownButtonWidgetState createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  List<String> items = ["Cash", "FHA", "VA", "Conventional", "USDA"];

  String dropDownDefaultValue = "Please Search";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.grey[300],
          border: Border.all(width: 1, color: Colors.blue[300])
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$dropDownDefaultValue", style: TextStyle(fontSize: 16),),
          DropdownButton<String>(
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            icon: Icon(
              Icons.arrow_drop_down_sharp,
            ),
            onChanged: (value) {
              setState(() {
                dropDownDefaultValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
