// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';
import 'package:spotify_clone/core/constants/image_constants.dart';
import 'package:spotify_clone/dummy_db.dart';
import 'package:spotify_clone/globel_widget/music_player.dart';
import 'package:spotify_clone/view/home_screen/widget/cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Welcome To",
                      style: TextStyle(
                          color: ColorConstants.primaryWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      ImageConstants.appIconpng,
                      scale: 6,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.notifications,
                      color: ColorConstants.primaryWhite,
                    ),
                    Icon(
                      Icons.punch_clock_rounded,
                      color: ColorConstants.primaryWhite,
                    ),
                    Icon(
                      Icons.settings,
                      color: ColorConstants.primaryWhite,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=600",
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 63, 202, 25),
                          border: Border.all(
                            color: ColorConstants.primaryWhite,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 5, top: 5),
                        child: Text(
                          "Music",
                          style: TextStyle(
                              color:
                                  ColorConstants.primaryWhite.withOpacity(0.5)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryBlack,
                          border: Border.all(
                            color: ColorConstants.primaryWhite.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 5, top: 5),
                        child: Text(
                          "Podcast",
                          style: TextStyle(
                              color:
                                  ColorConstants.primaryWhite.withOpacity(0.5)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Your Downlodes",
                          style: TextStyle(
                              color: ColorConstants.primaryWhite,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "No Downlode Records",
                          style: TextStyle(
                            color: ColorConstants.primaryWhite.withOpacity(0.5),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Charts",
                      style: TextStyle(
                        color: ColorConstants.primaryWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            DummyDb.coverPicList1.length,
                            (index) => Cards(
                                text: DummyDb.coverPicList1[index]["text"],
                                coverpic: DummyDb.coverPicList1[index]
                                    ["coverpic"])),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Polular",
                      style: TextStyle(
                        color: ColorConstants.primaryWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            DummyDb.coverPicList2.length,
                            (index) => Cards(
                                text: DummyDb.coverPicList2[index]["text"],
                                coverpic: DummyDb.coverPicList2[index]
                                    ["coverpic"])),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Album",
                      style: TextStyle(
                        color: ColorConstants.primaryWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            DummyDb.coverPicList3.length,
                            (index) => Cards(
                                text: DummyDb.coverPicList3[index]["text"],
                                coverpic: DummyDb.coverPicList3[index]
                                    ["coverpic"])),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Radio",
                      style: TextStyle(
                        color: ColorConstants.primaryWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            DummyDb.coverPicList4.length,
                            (index) => Cards(
                                text: DummyDb.coverPicList4[index]["text"],
                                coverpic: DummyDb.coverPicList4[index]
                                    ["coverpic"])),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Pop",
                      style: TextStyle(
                        color: ColorConstants.primaryWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            DummyDb.coverPicList5.length,
                            (index) => Cards(
                                text: DummyDb.coverPicList5[index]["text"],
                                coverpic: DummyDb.coverPicList5[index]
                                    ["coverpic"])),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Pop",
                      style: TextStyle(
                        color: ColorConstants.primaryWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            DummyDb.coverPicList6.length,
                            (index) => Cards(
                                text: DummyDb.coverPicList6[index]["text"],
                                coverpic: DummyDb.coverPicList6[index]
                                    ["coverpic"])),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
