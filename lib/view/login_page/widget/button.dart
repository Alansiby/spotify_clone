// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    this.onTap,
    this.haveBorder = true,
    this.buttonColor = const Color.fromARGB(255, 12, 217, 19),
    required this.text,
  });
  final bool haveBorder;
  final Function()? onTap;
  final String text;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(25),
            border:
                haveBorder == true ? Border.all(color: Colors.black) : null),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
