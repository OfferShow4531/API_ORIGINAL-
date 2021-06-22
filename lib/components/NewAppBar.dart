import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickmorty/main.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/screens/my_screen/screen.dart';
import 'package:rickmorty/screens/my_screen/widgets/charactersScreen.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_list.dart';
import 'package:rickmorty/theme/color_theme.dart';

class MySliverAppBar extends PreferredSize {
  MySliverAppBar() : preferredSize = Size.fromHeight(200);
  @override
  final Size preferredSize;

  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 200,
      flexibleSpace: Image(
        image: AssetImage(Images.AppBarImage),
        fit: BoxFit.cover,
        isAntiAlias: true,
      ),
      leading: IconButton(
        icon: Image.asset(MainIcons.back_icon),
        iconSize: 40,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}


class PlanetAppBar extends PreferredSize {
  PlanetAppBar() : preferredSize = Size.fromHeight(200);
  @override
  final Size preferredSize;

  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 200,
      flexibleSpace: Image(
        image: AssetImage(Images.EarthAppBar),
        fit: BoxFit.cover,
        isAntiAlias: true,
      ),
      leading: IconButton(
        icon: Image.asset(MainIcons.back_icon),
        iconSize: 40,
        alignment: Alignment.topLeft,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
