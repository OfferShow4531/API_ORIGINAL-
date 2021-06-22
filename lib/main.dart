

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickmorty/screens/my_screen/screen.dart';
import 'package:rickmorty/screens/my_screen/widgets/charactersScreen.dart';
import 'package:rickmorty/screens/my_screen/widgets/profile_screen.dart';
import 'package:rickmorty/screens/my_screen/src/screen.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_grid.dart';
import 'package:rickmorty/screens/my_screen/widgets/personPage.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_list.dart';
import 'package:rickmorty/screens/my_screen/widgets/planet_list.dart';
import 'package:rickmorty/theme/color_theme.dart';
import 'package:rickmorty/theme/text_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/hat.dart';
import 'components/main_app_bar.dart';
import 'components/main_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: ColorPalette.mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => SplashScreen(),
        '/characters': (context) => HomeScreen(),
        '/planets': (context) => PlanetList(),
      },
    );
  }
}

