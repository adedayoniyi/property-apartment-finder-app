import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:property_apartment_finder_task5/screens/detailsPage.dart';

class MoreDetailsPage extends StatelessWidget {
  const MoreDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/blue.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return DetailsPage();
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
                  padding: const EdgeInsets.only(left: 250, top: 15),
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
            SizedBox(
              height: 250,
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      title: Text(
                        "Gucci Sofa",
                        style: TextStyle(color: Colors.white),
                      ),
                      content: Row(
                        children: [
                          Icon(Icons.share),
                          Text("Share"),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.radio_button_checked,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      title: Text(
                        "Swedish Table",
                        style: TextStyle(color: Colors.white),
                      ),
                      content: Row(
                        children: [
                          Icon(Icons.share),
                          Text("Share"),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.radio_button_checked,
              ),
            ),
            SizedBox(height: 80),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GlassmorphicContainer(
                    width: 190,
                    height: 50,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.table_bar,
                          ),
                          Icon(
                            Icons.view_stream,
                          ),
                          Icon(
                            Icons.library_add_check,
                          ),
                          Icon(
                            Icons.straighten,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: GlassmorphicContainer(
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
                        Icons.radar,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
