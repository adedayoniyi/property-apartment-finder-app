import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:property_apartment_finder_task5/screens/homePage.dart';
import 'package:property_apartment_finder_task5/screens/moreDetailsPage.dart';
import 'package:property_apartment_finder_task5/util/secondCard.dart';
import 'package:property_apartment_finder_task5/util/thirdCard.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final List data3 = [
    ["2707 FL 27", "\$2500", "Apply"],
    ["2707 FL 27", "\$2500", "Apply"],
    ['2707 FL 27', "\$2500", "Apply"]
  ];
  final List data4 = [
    [Icons.bed, "Bedroom"],
    [Icons.bathtub_outlined, "Bathroom"],
    [Icons.kitchen, 'Kitchen']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return HomePage();
                          })));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 15),
                          child: GlassmorphicContainer(
                            width: 40,
                            height: 40,
                            borderRadius: 25,
                            blur: 0,
                            //alignment: Alignment.bottomCenter,
                            border: 2,
                            linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFffffff).withOpacity(0.4),
                                Color(0xFFFFFFFF).withOpacity(0.4),
                              ],
                            ),
                            borderGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFffffff).withOpacity(0.5),
                                Color((0xFFFFFFFF)).withOpacity(0.5),
                              ],
                            ),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(Icons.arrow_back_ios),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160, top: 15),
                        child: GlassmorphicContainer(
                          width: 40,
                          height: 40,
                          borderRadius: 25,
                          blur: 0,
                          //alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFffffff).withOpacity(0.5),
                                Color(0xFFFFFFFF).withOpacity(0.5),
                              ],
                              stops: [
                                0.1,
                                1,
                              ]),
                          borderGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFffffff).withOpacity(0.5),
                              Color((0xFFFFFFFF)).withOpacity(0.5),
                            ],
                          ),
                          child: Center(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return MoreDetailsPage();
                                  })));
                                },
                                icon: Icon(Icons.view_in_ar)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 15),
                        child: GlassmorphicContainer(
                          width: 40,
                          height: 40,
                          borderRadius: 25,
                          blur: 0,
                          //alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFffffff).withOpacity(0.5),
                                Color(0xFFFFFFFF).withOpacity(0.5),
                              ],
                              stops: [
                                0.1,
                                1,
                              ]),
                          borderGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFffffff).withOpacity(0.5),
                              Color((0xFFFFFFFF)).withOpacity(0.5),
                            ],
                          ),
                          child: Center(child: Icon(Icons.bookmark_border)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              height: 320,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage("images/apart-2.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text("High Rise Apartment",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 238, 176, 5),
                ),
              ),
              Text("4.9"),
              Text("(1620)", style: TextStyle(color: Colors.grey)),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text("NASHVILLE,TN 37203",
                    style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
                "1- and 2- bedroom apartments are a balance of sophisticated design and modern convienience. Shedule an in-person or virtual",
                style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Container(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data4.length,
                  itemBuilder: ((context, index) {
                    return SecondCard(
                      iconType: data4[index][0],
                      textOne: data4[index][1],
                    );
                  }),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text("Available Residence",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: data3.length,
                  itemBuilder: ((context, index) {
                    return ThirdCard(
                      textOne: data3[index][0],
                      textThree: data3[index][2],
                      textTwo: data3[index][1],
                    );
                  })))
        ]),
      ),
    );
  }
}
