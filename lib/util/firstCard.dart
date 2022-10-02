import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  final Color oneColor;
  final Color oneColor1;
  final String testOne;
  final Color textColor;
  const FirstCard({
    Key? key,
    required this.textColor,
    required this.oneColor1,
    required this.oneColor,
    required this.testOne,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 20,
        width: 120,
        decoration: BoxDecoration(
            color: oneColor,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: oneColor1, width: 1)),
        child: Center(
            child: Text(
          testOne,
          style: TextStyle(color: textColor),
        )),
      ),
    );
  }
}
