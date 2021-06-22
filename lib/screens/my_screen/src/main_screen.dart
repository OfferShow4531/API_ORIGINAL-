import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickmorty/components/main_app_bar.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/theme/color_theme.dart';

class MainScreen extends StatelessWidget {
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
        child: Center(
          child: Image.asset(Images.textImage),
        ),
      ),
    );
  }
}
