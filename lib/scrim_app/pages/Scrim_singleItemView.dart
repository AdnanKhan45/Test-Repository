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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isSelected = true;
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
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Text("Scrim Information", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(itemCount: 4,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.8), itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(width: 1.5, color: Colors.black)
                  ),
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.room_rounded),
                        SizedBox(height: 5.0,),
                        Text("Scrim Fee", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5.0,),
                        Text("2000", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 15.0,),
          ],
        ),
      ),
    );
  }
}
