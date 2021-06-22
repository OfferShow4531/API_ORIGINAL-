import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty/components/main_app_bar.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/screens/my_screen/screen.dart';
import 'package:rickmorty/theme/color_theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    return new Timer(
      Duration(seconds: 1),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  void initState(){
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MainAppBar(),
      body: Container(
        decoration: BoxDecoration(
          color: ColorPalette.mainColor,
          image: DecorationImage(
              image: AssetImage(Images.spaceImage), fit: BoxFit.cover),
        ),
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset(Images.textOne),
              Image.asset(Images.textTwo),
              Image.asset(Images.textThree),
              Image.asset(
                Images.rickandmorty,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
