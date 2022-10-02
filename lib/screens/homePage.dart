import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:property_apartment_finder_task5/screens/detailsPage.dart';
import 'package:property_apartment_finder_task5/util/firstCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List data1 = [
    [Colors.blue, Colors.blue, "Residential", Colors.white],
    [Colors.white, Colors.grey, "Commercial", Colors.grey],
    [Colors.white, Colors.grey, "Industrial", Colors.grey]
  ];
  final List data2 = [
    [Colors.white, 23],
    [Colors.grey[600], 4],
    [Colors.grey[600], 4]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "images/girl-head-1.jpg",
                  height: 40,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 170),
          child: Text(
            "Find Your",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 115),
          child: Text(
            "Dream Home",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25),
                ),
                prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    )),
                hintText: "Search",
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(17),
          child: Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data1.length,
                itemBuilder: ((context, index) {
                  return FirstCard(
                    oneColor: data1[index][0],
                    oneColor1: data1[index][1],
                    testOne: data1[index][2],
                    textColor: data2[index][0],
                  );
                }),
              )),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text("High Rise Apartment",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.location_pin,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, top: 5),
                    child: Text("NASHVILLE,TN 37203",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 250),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return DetailsPage();
                      })));
                    },
                    child: GlassmorphicContainer(
                      width: 170,
                      height: 50,
                      borderRadius: 25,
                      blur: 0,
                      //alignment: Alignment.bottomCenter,
                      border: 2,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.9),
                            Color(0xFFFFFFFF).withOpacity(0.9),
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
                        child: Text(
                          "Take a Look",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  GlassmorphicContainer(
                    width: 50,
                    height: 50,
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
                      child: Icon(
                        Icons.view_in_ar,
                      ),
                    ),
                  ),
                  GlassmorphicContainer(
                    width: 50,
                    height: 50,
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
                ],
              ),
            ],
          ),
          height: 380,
          width: 320,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage("images/real.jpg"), fit: BoxFit.fill)),
        ),
      ],
    )));
  }
}
