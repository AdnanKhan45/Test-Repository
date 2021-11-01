import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

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
                      "Statistics",
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
                child: listViewHeader(),
              ),
              verticalSpace(5),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: sidePadding,
                      child: Column(
                        children: [
                          listViewItem(),
                          verticalSpace(8)
                        ],
                      ),
                    );
                  },
                ),
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
