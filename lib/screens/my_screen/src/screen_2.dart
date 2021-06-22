import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty/components/main_app_bar.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/theme/color_theme.dart';

class HomeScreen1 extends StatelessWidget {
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
        padding: EdgeInsets.all(40),
        margin: EdgeInsets.all(0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Images.textOneNP),
              Image.asset(Images.textTwoNP),
              Image.asset(Images.textThreeNP),
              Image.asset(Images.fallMorty),
              Image.asset(Images.slimeRick),
            ],
          ),
        ),
      ),
    );
  }
}
