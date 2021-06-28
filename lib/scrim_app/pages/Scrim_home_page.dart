import 'package:flutter/material.dart';
import 'package:test_project/scrim_app/pages/Scrim_singleItemView.dart';
import 'package:test_project/scrim_app/scrim_home_page_entity/scrim_entity.dart';

class ScrimHomePage extends StatelessWidget {

  const ScrimHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black ,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 290.0,),
                Icon(Icons.favorite_outline_rounded,)
              ],
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Scrim", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(3.0)
                    ),
                    child: Center(child: Text("Create Scrim", style: TextStyle(fontWeight: FontWeight.w500),),),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(itemCount: ScrimEntity.ScrimData.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.8), itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SingleItemView(entity: ScrimEntity.ScrimData[index],)));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(width: 140, height: 160,child: Image.asset("${ScrimEntity.ScrimData[index].image}", fit: BoxFit.cover,)),
                        Divider(color: Colors.grey,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Price", style: TextStyle(color: Colors.white),),
                              Text("${ScrimEntity.ScrimData[index].price}", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
