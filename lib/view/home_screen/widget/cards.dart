// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.text,
    required this.coverpic,
  });
  final String text;
  final String coverpic;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 150,
                width: 130,
                decoration: BoxDecoration(color: ColorConstants.primaryBlack),
                child: Container(
                  padding:
                      EdgeInsets.only(bottom: 30, left: 5, right: 5, top: 5),
                  decoration: BoxDecoration(color: ColorConstants.primaryBlack),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              coverpic,
                            ))),
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  child: Container(
                    child: Text(
                      text,
                      style: TextStyle(
                          color: ColorConstants.primaryWhite.withOpacity(0.8)),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
