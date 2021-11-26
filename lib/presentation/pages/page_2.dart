import 'package:flutter/material.dart';

import '../../consts.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.10,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    E_TECH_VIRAL,
                    style: TextStyle(fontWeight: FontWeight.bold, color: COLOR_WHITE),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.lock_outlined,
                      color: COLOR_WHITE,
                    ),
                  )
                ],
              ),
            ),
          ),
          addVerticalSpace(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
                ),
                addHorizontalSpace(5),
                Column(
                  children: [
                    Text(
                      "Aap ka naam",
                      style: TextStyle(fontSize: 12, color: COLOR_GREY),
                    ),
                    addVerticalSpace(2),
                    Text(
                      "03231231412",
                      style: TextStyle(fontSize: 12, color: COLOR_GREY),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
                  child: Center(
                    child: Icon(Icons.threesixty_rounded),
                  ),
                )
              ],
            ),
          ),
          addVerticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
                  ),
                  addVerticalSpace(3),
                  Text(
                    "Visiting Cards",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
                  ),
                  addVerticalSpace(2),
                  Text(
                    "Apki Zaban",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
                  ),
                  addVerticalSpace(2),
                  Text(
                    "Paise Kamaen",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          addVerticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.book, color: Colors.grey[200],),
                addHorizontalSpace(10),
                Text("Karobar ki Malumaat", style: TextStyle(color: COLOR_WHITE),),
                Spacer(),
                Icon(Icons.arrow_drop_down_sharp, color: COLOR_WHITE,)
              ],
            ),
          ),
          addVerticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.settings, color: Colors.grey[200],),
                addHorizontalSpace(10),
                Text("App Settings", style: TextStyle(color: COLOR_WHITE),),
                Spacer(),
                Icon(Icons.arrow_drop_down_sharp, color: COLOR_WHITE,)
              ],
            ),
          ),
          addVerticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.star_outlined, color: Colors.grey[200],),
                addHorizontalSpace(10),
                Text("Rate Easy Khata", style: TextStyle(color: COLOR_WHITE),),
              ],
            ),
          ),
          addVerticalSpace(20),
          Center(
            child: Text("App version 3.6.3", style: TextStyle(fontSize: 12, color: COLOR_GREY),),
          )
        ],
      ),
    );
  }
}
