// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';

class CustomBox extends StatelessWidget {
  CustomBox({
    super.key,
    this.onTap,
    this.textColor = ColorConstants.primaryWhite,
    required this.boxColor,
    required this.text,
  });
  final Color boxColor;
  final String text;
  final Function()? onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: boxColor,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
                color: ColorConstants.primaryBlack.withOpacity(0.5))),
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
