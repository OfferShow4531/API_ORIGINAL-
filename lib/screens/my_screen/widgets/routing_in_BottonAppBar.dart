import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/screens/my_screen/screen.dart';
import 'package:rickmorty/screens/my_screen/src/screen.dart';
import 'package:rickmorty/screens/my_screen/widgets/episode_screen.dart';
import 'package:rickmorty/screens/my_screen/widgets/planet_list.dart';
import 'package:rickmorty/theme/color_theme.dart';

class HomePageNavigation extends StatefulWidget {
  const HomePageNavigation({Key key}) : super(key: key);

  @override
  _HomePageNavigationState createState() => _HomePageNavigationState();
}

class _HomePageNavigationState extends State<HomePageNavigation> {
  int _selectIndex = 0;
  void _onTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<dynamic> _widgetPageRouting = [
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new HomeScreen())),
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new PlanetList())),
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new EpisodeList())),


    ];

    return Scaffold(
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: true,
      resizeToAvoidBottomInset: true,

      body: IndexedStack(
        children: <Widget>[_widgetPageRouting.elementAt(_selectIndex)],
      ),
      bottomNavigationBar: BottomNavigationBar(

        elevation: 3.0,
        selectedFontSize: 10,
        iconSize: 30,
        // currentIndex: _selectedIndex,
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
            color: ColorPalette.live),
        unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.5,
            color: ColorPalette.mainColor),
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

        onTap: _onTapped,
        currentIndex: _selectIndex,

      ),
    );

  }
}
