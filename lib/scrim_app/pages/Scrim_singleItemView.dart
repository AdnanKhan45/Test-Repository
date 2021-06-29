import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/scrim_app/scrim_home_page_entity/scrim_entity.dart';

class SingleItemView extends StatefulWidget {
  final ScrimEntity entity;

  const SingleItemView({Key key, this.entity}) : super(key: key);

  @override
  _SingleItemViewState createState() => _SingleItemViewState();
}

class _SingleItemViewState extends State<SingleItemView> {
  bool isSelected = true;
  int switchPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 120,
                  child: Image.asset(widget.entity.image),
                ),
              ),
              Center(
                child: Text(
                  "Lorem Ipusm",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "4212",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        "X-points",
                        style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "145",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        "Match",
                        style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "90%",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        "Winrate",
                        style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                    "Lorem Ipsum dolor sit amet\nconsectuer adipiscing alt",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                  ))
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45.0,
                      color: Colors.white38,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSelected = true;
                                      switchPage = 0;
                                    });
                                  },
                                  child: Icon(
                                    Icons.local_activity,
                                    color: isSelected == true ? Colors.lightGreenAccent : Colors.black,
                                  ))),
                          Container(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isSelected = false;
                                  switchPage = 1;
                                });
                              },
                              child: Icon(
                                Icons.account_circle,
                                color: isSelected == false ? Colors.lightGreenAccent : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              switchPage == 0
                  ? Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Scrim Information",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
                          ),
                          activityItem(),
                          activityItem(),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rules",
                                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "There is no restrictions on Account Levels,\nHeroes, Skins and Emblems that are used\nwithout exception.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "X-team is not responsible for lags,\ndisconnections, gadgets not functioning\nproperly and mistakes from the other party.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "Additional Rules",
                                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "There is no restrictions on Account Levels,\nHeroes, Skins and Emblems that are used\nwithout exception.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "X-team is not responsible for lags,\ndisconnections, gadgets not functioning\nproperly and mistakes from the other party.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : Text("")
            ],
          ),
        ),
      ),
    );
  }

  activityItem() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            decoration: BoxDecoration(color: Colors.black, border: Border.all(width: 1.5, color: Colors.white38)),
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.room_rounded, color: Colors.white),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Scrim Fee",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "2000",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            decoration: BoxDecoration(color: Colors.black, border: Border.all(width: 1.5, color: Colors.white38)),
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.room_rounded, color: Colors.white),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Scrim Fee",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "2000",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );

  }

  listVIewITem() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          width: 40,
          height: 40,
          decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "dummy title",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              "dummy subtitle",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white38),
            ),
          ],
        )
      ],
    );
  }
}
