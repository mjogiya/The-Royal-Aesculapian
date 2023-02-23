import 'package:flutter/material.dart';

class Skincare extends StatefulWidget {
  const Skincare({super.key});

  @override
  State<Skincare> createState() => _SkincareState();
}

var titleList = [
  "Hairbless Tablet 10`s",
  "Kojivit Ultra Gel 30gm",
  "Biluma Cream 15gm",
  "Demelan Cream 20gm"
];

var descList = [
  "By Mankind Pharmaceuticals Ltd.",
  "By Micro Labs Ltd.",
  "By Galderma India Pvt.Ltd.",
  "By Glenmark Pharmaceuticals Ltd."
];

var price = ["MRP 570", "MRP 450", "MRP 424", "MRP 160"];

var imgList = [
  "Logos/Doctor/Skin.jpg",
  "Logos/Doctor/womensHealth.jpg",
  "Logos/Doctor/generalPhysician.jpg",
  "Logos/Doctor/dentalCare.jpg"
];

class _SkincareState extends State<Skincare> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          title: Text(
            "Skincare",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Colors.black,
                )),
          ],
        ),
        body: ListView.builder(
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Card(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset(imgList[index]),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              titleList[index],
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                descList[index],
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                price[index],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "Add to Cart",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
