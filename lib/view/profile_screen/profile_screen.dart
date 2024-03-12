// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=600",
                    ),
                  ),
                  Text(
                    "Your Library",
                    style: TextStyle(color: ColorConstants.primaryWhite),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.search,
                    color: ColorConstants.primaryWhite,
                  ),
                  Icon(
                    Icons.add,
                    color: ColorConstants.primaryWhite,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
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
                        "Play List",
                        style: TextStyle(
                            color:
                                ColorConstants.primaryWhite.withOpacity(0.5)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
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
                        "Artist",
                        style: TextStyle(
                            color:
                                ColorConstants.primaryWhite.withOpacity(0.5)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: ColorConstants.primaryWhite,
                  ),
                  Text(
                    "Rescent",
                    style: TextStyle(
                      color: ColorConstants.primaryWhite,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Icon(
                      Icons.favorite,
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Liked",
                    style: TextStyle(color: ColorConstants.primaryWhite),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.favorite,
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Favorite",
                    style: TextStyle(color: ColorConstants.primaryWhite),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Icon(
                      Icons.add,
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(color: ColorConstants.primaryWhite),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.add,
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(color: ColorConstants.primaryWhite),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
