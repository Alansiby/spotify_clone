// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';
import 'package:spotify_clone/core/constants/image_constants.dart';

class MusicPlayer extends StatefulWidget {
  MusicPlayer({
    super.key,
  });

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  int values = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.primaryBlack,
        leading: Icon(
          Icons.keyboard_arrow_down_sharp,
          color: ColorConstants.primaryWhite,
        ),
        title: Text(
          "Playing From Play List",
          style: TextStyle(color: ColorConstants.primaryWhite, fontSize: 15),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: ColorConstants.primaryWhite,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CircleAvatar(
                  //   backgroundImage: NetworkImage(
                  //       "https://images.pexels.com/photos/5650905/pexels-photo-5650905.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  // )
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstants.songpng),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorConstants.primaryWhite)),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Title(
                      color: ColorConstants.primaryWhite,
                      child: Text(
                        "Jonny jonny yes pappa",
                        style: TextStyle(
                            color: ColorConstants.primaryWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.add_circle_outline_sharp,
                    color: ColorConstants.primaryWhite,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Slider(
                      value: values.toDouble(),
                      min: 0,
                      max: 200,
                      activeColor: Colors.green,
                      inactiveColor: Colors.white,
                      onChanged: (double newValue) {
                        setState(() {
                          values = newValue.round();
                        });
                      })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1.50",
                    style: TextStyle(
                        color: ColorConstants.primaryWhite.withOpacity(0.6)),
                  ),
                  Text(
                    "12.3",
                    style: TextStyle(
                        color: ColorConstants.primaryWhite.withOpacity(0.6)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.one_x_mobiledata_outlined,
                    color: ColorConstants.primaryWhite,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.skip_previous_sharp,
                    color: ColorConstants.primaryWhite,
                  ),
                  Icon(
                    Icons.play_circle_fill_sharp,
                    color: ColorConstants.primaryWhite,
                  ),
                  Icon(
                    Icons.skip_next_sharp,
                    color: ColorConstants.primaryWhite,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.timer,
                    color: ColorConstants.primaryWhite,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                              border: Border.all(
                                  color: ColorConstants.primaryWhite)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "A Way with Words is a radio show and podcast that features light-hearted conversation about language change, debates, and differences, as well as new words, old sayings, slang, family expressions, word origins and histories, etymology, linguistics, regional dialects, word games and puzzles, grammar, books, literature, writers and writing, and more. A Way with Words is a radio show and podcast that features light-hearted conversation about language change, debates, and differences, as well as new words, old sayings, slang, family expressions, word origins and histories, etymology, linguistics, regional dialects, word games and puzzles, grammar, books, literature, writers and writing, and more. The Writing Life podcast is the podcast for anyone who writes. Every fortnight, we speak to writers and educators to help you improve your writing, from theme, structure and routine to language, character and writing specific genres.The Writing Life podcast is the podcast for anyone who writes. Every fortnight, we speak to writers and educators to help you improve your writing, from theme, structure and routine to language, character and writing specific genres.The Writing Life podcast is the podcast for anyone who writes. Every fortnight, we speak to writers and educators to help you improve your writing, from theme, structure and routine to language, character and writing specific genres.The Writing Life podcast is the podcast for anyone who writes. Every fortnight, we speak to writers and educators to help you improve your writing, from theme, structure and routine to language, character and writing specific genres.The Writing Life podcast is the podcast for anyone who writes. Every fortnight, we speak to writers and educators to help you improve your writing, from theme, structure and routine to language, character and writing specific genres.",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
