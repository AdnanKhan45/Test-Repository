import 'package:flutter/material.dart';
import 'package:khaata_app/consts.dart';

class CashInPage extends StatelessWidget {
  const CashInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.10,
                color: Colors.black,
                child: Text(
                  "Cash In",
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.10,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: "Rs Amount",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Spacer(),
              Container(
                  width: size.width,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(color: COLOR_GREEN, borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "CASH IN",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1, color: COLOR_WHITE),
                    ),
                  )),
              addVerticalSpace(15),
              CalculatorOverlay(),
            ],
          ),
        ),
      ),
    );
  }
}

class CalculatorOverlay extends StatelessWidget {
  const CalculatorOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            calcButton("C", 80, 32, Colors.blueGrey.shade700.withOpacity(0.6)),
            addHorizontalSpace(5),
            calcButton("÷", 80, 32, Colors.blueGrey.shade700.withOpacity(0.6)),
            addHorizontalSpace(5),
            calcButton("×", 80, 32, Colors.blueGrey.shade700.withOpacity(0.6)),
            addHorizontalSpace(5),
            calcButton("<-", 80, 32, Colors.blueGrey.shade700.withOpacity(0.6)),
          ],
        ),
        addVerticalSpace(5),
        Row(
          children: [
            calcButton("7", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
            addHorizontalSpace(5),
            calcButton("5", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
            addHorizontalSpace(5),
            calcButton("9", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
            addHorizontalSpace(5),
            calcButton("-", 80, 32, Colors.blueGrey.shade700.withOpacity(.9)),

          ],
        ),
        addVerticalSpace(5),
        Row(
          children: [
          Column(
            children: [
              Row(
                children: [
                  calcButton("4", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
                  addHorizontalSpace(5),
                  calcButton("5", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
                  addHorizontalSpace(5),
                  calcButton("6", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
                ],
              ),
              addVerticalSpace(5),
              Row(
                children: [
                  calcButton("1", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
                  addHorizontalSpace(5),
                  calcButton("2", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
                  addHorizontalSpace(5),
                  calcButton("3", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
                ],
              ),
            ],
          ),
            addHorizontalSpace(5),
            calcButton("+", 80, 68, Colors.blueGrey.shade700.withOpacity(.9)),
          ],
        ),
        addVerticalSpace(5),
        Row(
          children: [
            calcButton("0", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
            addHorizontalSpace(5),
            calcButton("00", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
            addHorizontalSpace(5),
            calcButton(".", 80, 32, Colors.blueGrey.shade700.withOpacity(0.4)),
            addHorizontalSpace(5),
            calcButton("=", 80, 32, Colors.blueGrey.shade700.withOpacity(0.7)),
          ],
        ),
      ],
    );
  }

  Widget calcButton(String text, double width, double height, Color color) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: COLOR_WHITE),
        ),
      ),
    );
  }
}
