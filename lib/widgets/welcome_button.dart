import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  final Function() ontap;
  final Color textColor;
  const WelcomeButton({super.key, required this.buttonText, required this.color,required this.ontap,required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
        child: Text(
          textAlign: TextAlign.center,
          buttonText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: textColor),
        ),
      ),
    );
  }
}
