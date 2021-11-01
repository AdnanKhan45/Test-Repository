import 'package:flutter/material.dart';

class InviteAFriendPage extends StatelessWidget {
  const InviteAFriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = 15;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding, vertical: 10);
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Text(
                      "Invite a Friend",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.notifications_none_outlined)
                  ],
                ),
              ),
              verticalSpace(5),
              Divider(
                height: 2,
              ),
              verticalSpace(10),
              Container(
                width: size.width,
                height: size.height * 0.35,
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Text("Image"),
                ),
              ),
              verticalSpace(10),
              Padding(
                padding: sidePadding,
                child: Text(
                  "How would you like to develop and complete together by inviting your friends?",
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              Container(
                width: size.width,
                height: 35,
                margin: sidePadding,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 108, 81, 1.0),
                        Color.fromRGBO(255, 184, 98, 1),
                      ],
                      stops: [0.0, 1.0],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                    ),
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Invite a Friend",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget verticalSpace(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget horizontalSpace(double width) {
    return SizedBox(width: width);
  }

  listViewHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("DERS"),
        Text("DOGRU"),
        Text("YANLIS"),
        Text("NET"),
      ],
    );
  }

  listViewItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Konu1"),
        Text("3"),
        Text("2"),
        Text("0.3"),
      ],
    );
  }
}
