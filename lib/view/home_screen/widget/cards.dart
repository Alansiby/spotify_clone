// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';
import 'package:spotify_clone/globel_widget/music_player.dart';

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
                height: 160,
                width: 140,
                decoration: BoxDecoration(
                  color: ColorConstants.primaryBlack,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MusicPlayer()));
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(bottom: 30, left: 8, right: 8, top: 5),
                    decoration:
                        BoxDecoration(color: ColorConstants.primaryBlack),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                coverpic,
                              ))),
                    ),
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
