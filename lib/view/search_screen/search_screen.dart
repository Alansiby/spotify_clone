// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';
import 'package:spotify_clone/dummy_db.dart';
// import 'package:spotify_clone/view/search_screen/widget/custom_box.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        // appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
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
                      "Search",
                      style: TextStyle(
                          color: ColorConstants.primaryWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 100),
                    Row(
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: ColorConstants.primaryWhite,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: "What do you want to listen?",
                          hintStyle:
                              TextStyle(color: ColorConstants.primaryBlack),
                          prefixIconConstraints: BoxConstraints(minWidth: 30),
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          // contentPadding: EdgeInsets.symmetric(vertical: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none),
                          fillColor:
                              ColorConstants.primaryWhite.withOpacity(0.9)),
                      style: TextStyle(color: ColorConstants.primaryBlack),
                    ))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Browse all",
                      style: TextStyle(
                          color: ColorConstants.primaryWhite,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: DummyDb.boxList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2,
                      mainAxisExtent: 100),
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: DummyDb.boxList[index]["color"],
                        shape: BoxShape.rectangle),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        DummyDb.boxList[index]["text"],
                        style: TextStyle(
                            color: ColorConstants.primaryWhite,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
