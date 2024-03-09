// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';

class NameBox extends StatelessWidget {
  NameBox({
    super.key,
    this.text = "Your Song",
    this.boxcolor = ColorConstants.shinyGreen,
  });
  final Color boxcolor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
          decoration: BoxDecoration(color: boxcolor),
        ),
        Text(text)
      ],
    ));
  }
}
