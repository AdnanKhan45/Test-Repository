import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/features/presentation/widgets/scroll_animations_widgets/category_scroller_widget.dart';

import 'consts.dart';

class ScrollAnimationsHomePage extends StatefulWidget {
  const ScrollAnimationsHomePage({Key? key}) : super(key: key);

  @override
  _ScrollAnimationsHomePageState createState() => _ScrollAnimationsHomePageState();
}

class _ScrollAnimationsHomePageState extends State<ScrollAnimationsHomePage> {
  ScrollController controller = ScrollController();
  final CategoriesScroller categoriesScroller = CategoriesScroller();
  bool closeTopContainer = false;
  double topContainer = 0;
  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    responseList.forEach(
      (post) {
        listItems.add(
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
            ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        post["name"],
                        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        post["brand"],
                        style: const TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$ ${post["price"]}",
                        style: const TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Image.asset(
                    "lib/assets/${post["image"]}",
                    height: double.infinity,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
    setState(
      () {
        itemsData = listItems;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    getPostsData();

    controller.addListener(
      () {
        double value = controller.offset / 119;

        setState(
          () {
            topContainer = value;
            closeTopContainer = controller.offset > 50;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          height: size.height,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Loyality Cards",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              AnimatedOpacity(
                duration: Duration(milliseconds: 400),
                opacity: closeTopContainer ? 0 : 1,
                child: AnimatedContainer(
                  width: size.width,
                  alignment: Alignment.topCenter,
                  height: closeTopContainer ? 0 : categoryHeight,
                  duration: Duration(milliseconds: 400),
                  child: categoriesScroller,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: controller,
                  itemCount: itemsData.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    double scale = 1.0;
                    if (topContainer > 0.5) {
                      scale = index + 0.5 - topContainer;
                      if (scale < 0) {
                        scale = 0;
                      } else if (scale > 1) {
                        scale = 1;
                      }
                    }
                    return Opacity(
                      opacity: scale,
                      child: Transform(
                        transform: Matrix4.identity()..scale(scale, scale),
                        alignment: Alignment.topCenter,
                        child: Align(
                          heightFactor: 0.7,
                          alignment: Alignment.topCenter,
                          child: itemsData[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
