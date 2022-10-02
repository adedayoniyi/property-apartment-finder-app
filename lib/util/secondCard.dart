import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  final IconData iconType;
  final String textOne;
  const SecondCard({
    Key? key,
    required this.iconType,
    required this.textOne,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 20,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(iconType),
            Text(
              textOne,
              style: TextStyle(color: Colors.black),
            ),
          ],
        )),
      ),
    );
  }
}
