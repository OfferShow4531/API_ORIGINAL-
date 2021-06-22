import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_list.dart';
import 'package:rickmorty/screens/my_screen/widgets/planet_list.dart';
import 'package:rickmorty/theme/color_theme.dart';

class MainBottomBar extends StatefulWidget {
  MainBottomBar ({Key key}) : super(key: key);

  @override
  _MainBottomBarState createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  int _selectedIndex = 0;

  String currentPage;
  int currentIndex;
  List<String>pageKeys = ["HomeScreen","CharacterScreen","PlanetList","EpisodeList"];
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // void _selectTab(String tabItem,int index){
  //   setState(() {
  //     _currentTab = pageKeys[index];
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      elevation: 3.0,
      selectedFontSize: 10,
      iconSize: 30,
      selectedItemColor: ColorPalette.live,
      unselectedItemColor: ColorPalette.mainColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedIconTheme: IconThemeData(color: ColorPalette.live),
      unselectedIconTheme: IconThemeData(color: ColorPalette.mainColor),
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.5,
        color: ColorPalette.live
      ),
      unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.5,
          color: ColorPalette.mainColor
      ),
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPalette.hoverColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(MainIcons.goose),
          title: Text(
            'Персонажи',
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(MainIcons.planet),
          title: Text(
            'Локации',
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(MainIcons.tv),
          title: Text(
            'Эпизоды',
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(MainIcons.settings),
          title: Text(
            'Настройки',
          ),
        ),
      ],

      onTap: _onTapped, // new
      currentIndex: _selectedIndex, // new
    );

  }
}
