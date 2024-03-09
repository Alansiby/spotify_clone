// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';
import 'package:spotify_clone/profile_screen/profile_screen.dart';
import 'package:spotify_clone/view/home_screen/home_screen.dart';
import 'package:spotify_clone/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Widget> screenList = [
    HomeScreen(),
    SearchScreen(text: "text",),
    Container(
      color: Colors.lime,
    )
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstants.primaryBlack,
          onTap: (value) {
            if (value != 2) {
              selectedIndex = value;
              setState(() {});
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            }
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: ColorConstants.primaryWhite,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: ColorConstants.primaryWhite,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_music_sharp,
                  color: ColorConstants.primaryWhite,
                ),
                label: "Your Libary"),
          ]),
    );
  }
}
