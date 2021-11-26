import 'package:flutter/material.dart';
import 'package:khaata_app/consts.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
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
              addVerticalSpace(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: size.width * 0.35,
                      height: size.height * 0.10,
                      color: Colors.black54,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rs 2980",
                            style: TextStyle(fontWeight: FontWeight.bold, color: COLOR_GREEN, fontSize: 18),
                          ),
                          Text(
                            "Cash in hand",
                            style: TextStyle(color: COLOR_GREEN, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  addHorizontalSpace(8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: size.width * 0.35,
                      height: size.height * 0.10,
                      color: Colors.black54,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rs 480",
                            style: TextStyle(fontWeight: FontWeight.bold, color: COLOR_GREEN, fontSize: 18),
                          ),
                          Text(
                            "Aaj ka balance",
                            style: TextStyle(color: COLOR_GREEN, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              addVerticalSpace(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: size.width,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    border: Border.all(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard_outlined,
                        color: COLOR_WHITE,
                      ),
                      addHorizontalSpace(5),
                      Text(
                        "Purana record",
                        style: TextStyle(fontWeight: FontWeight.w500, color: COLOR_WHITE),
                      )
                    ],
                  ),
                ),
              ),
              addVerticalSpace(12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "26 Nov, 2021",
                      style: TextStyle(color: COLOR_GREY, fontSize: 12),
                    ),
                    Text(
                      "Cash Out",
                      style: TextStyle(color: COLOR_GREY, fontSize: 12),
                    ),
                    Text(
                      "Cash In",
                      style: TextStyle(color: COLOR_GREY, fontSize: 12),
                    ),
                  ],
                ),
              ),
              addVerticalSpace(8),
              Divider(),
              Expanded(
                child: ListView.builder(physics: BouncingScrollPhysics(), itemCount: 5, itemBuilder: (context, index) {
                  return listViewItem();
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: size.width,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                          color: COLOR_RED,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("- CASH OUT", style: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.bold, letterSpacing: 1),)),
                      ),
                    ),
                    addHorizontalSpace(5),
                    Expanded(
                      child: Container(
                        width: size.width,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                          color: COLOR_GREEN,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("+ CASH IN", style: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.bold, letterSpacing: 1),)),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  listViewItem() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "8:48 PM",
                    style: TextStyle(color: COLOR_WHITE, fontSize: 15),
                  ),
                  Text("vegetables", style: TextStyle(color: COLOR_GREY),),
                  addVerticalSpace(2),
                ],
              ),
              Text(
                "Rs 250",
                style: TextStyle(color: COLOR_RED, fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                "Rs 3,000",
                style: TextStyle(color: COLOR_GREEN, fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ],
          ),
        ),
        Divider(color: COLOR_GREY,)
      ],
    );
  }
}
