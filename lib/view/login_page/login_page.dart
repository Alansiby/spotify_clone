// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/color_constants.dart';
import 'package:spotify_clone/core/constants/image_constants.dart';
import 'package:spotify_clone/view/bottom_navi_screen/bottom_nav_screen.dart';
import 'package:spotify_clone/view/login_page/widget/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black87,
      body: Center(
        // child: Image.asset(ImageConstants.appIconPrivewpng),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                ImageConstants.appIconPrivewpng,
                scale: 3,
              ),
              SizedBox(height: 40),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "User Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.black.withOpacity(0.8),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25))),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.black.withOpacity(0.8),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25))),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password ?",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.6)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Button(
                buttonColor: nameController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty
                    ? ColorConstants.shinyGreen
                    : ColorConstants.primaryGreen,
                text: "Sign In",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavScreen()),
                      (route) => false);
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "or sign up with",
                    style: TextStyle(color: ColorConstants.shinyGreen),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: ColorConstants.primaryWhite,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.phone,
                    color: ColorConstants.primaryWhite,
                  )
                ],
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Don't have an Account ?",
                      style: TextStyle(color: ColorConstants.primaryWhite),
                      children: [
                        TextSpan(
                            text: "Sign in",
                            style: TextStyle(
                                color: ColorConstants.shinyGreen,
                                fontWeight: FontWeight.bold))
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
