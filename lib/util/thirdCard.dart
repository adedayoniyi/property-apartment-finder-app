import 'package:flutter/material.dart';

class ThirdCard extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final String textThree;
  const ThirdCard({
    Key? key,
    required this.textOne,
    required this.textThree,
    required this.textTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
      child: Container(
        height: 35,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(textOne),
            Text(
              textTwo,
              style: TextStyle(color: Colors.black),
            ),
            Text(textThree, style: TextStyle(color: Colors.blue)),
          ],
        )),
      ),
    );
  }
}
