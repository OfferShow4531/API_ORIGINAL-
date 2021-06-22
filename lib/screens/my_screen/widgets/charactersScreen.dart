import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:rickmorty/components/main_bottom_bar.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/resources/model/MyData.dart';
import 'package:rickmorty/resources/model/rick_and_morty_model.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_grid.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_list.dart';
import 'package:rickmorty/theme/color_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DescribeScreen extends StatefulWidget {
  @override
  _DescribeScreenState createState() => _DescribeScreenState();
}

class _DescribeScreenState extends State<DescribeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isGrid = false;
    var characterCount;

    return Scaffold(
      backgroundColor: ColorPalette.mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorPalette.mainColor,
        automaticallyImplyLeading: true,
        title: SearchTextFiled(),
        actions: [
          VerticalDivider(
            color: ColorPalette.personType,
            width: 1,
            indent: 12,
            endIndent: 12,
            thickness: 1,
          ),
          IconButton(
              icon: Icon(
                Icons.filter_alt_outlined,
                color: ColorPalette.personType,
              ),
              onPressed: () {})
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: TotalCharacters(
            totalCharacters: person.length.toString(),
            onTap: (value) {
              isGrid = value;
            },
          ),
        ),
      ),
      body: isGrid ? CharacterGrid() : CharactersList(),
      bottomNavigationBar: MainBottomBar(),
    );
  }
}

class SearchTextFiled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Найти персонажа',
        hintStyle: TextStyle(color: ColorPalette.personType),
        prefixIcon: Image.asset(
          MainIcons.find,
          color: ColorPalette.allPersons,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.all(10),
        filled: true,
        fillColor: ColorPalette.hoverColor,
      ),
    );
  }
}

class SearchTextFiledPlanet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Найти локацию',
        hintStyle: TextStyle(color: ColorPalette.personType),
        prefixIcon: Image.asset(
          MainIcons.find,
          color: ColorPalette.allPersons,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.all(10),
        filled: true,
        fillColor: ColorPalette.hoverColor,
      ),
    );
  }
}

class SearchTextFiledEpisode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Найти эпизод',
        hintStyle: TextStyle(color: ColorPalette.personType),
        prefixIcon: Image.asset(
          MainIcons.find,
          color: ColorPalette.allPersons,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.all(10),
        filled: true,
        fillColor: ColorPalette.hoverColor,
      ),
    );
  }
}

class TotalCharacters extends StatefulWidget {
  final Function(bool) onTap;
  final String totalCharacters;

  TotalCharacters({@required this.onTap, @required this.totalCharacters});

  @override
  _TotalCharactersState createState() => _TotalCharactersState();
}

class _TotalCharactersState extends State<TotalCharacters> {
  get characterCount => person.length;

  @override
  Widget build(BuildContext context) {
    bool isGrid = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Всего персонажей : $characterCount',
          style: TextStyle(
              color: ColorPalette.allPersons,
              fontSize: 20,
              fontStyle: FontStyle.normal),
        ),
        IconButton(
          icon: Image.asset(
            MainIcons.grid,
            color: ColorPalette.allPersons,
          ),
          onPressed: () {
            setState(
              () {
                widget.onTap(isGrid);
              },
            );
          },
        ),
      ],
    );
  }
}

class TotalPlanets extends StatefulWidget {
  const TotalPlanets({Key key}) : super(key: key);

  @override
  _TotalPlanetsState createState() => _TotalPlanetsState();
}

class _TotalPlanetsState extends State<TotalPlanets> {
  get characterCount => planets.length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Всего локаций : $characterCount',
          style: TextStyle(
              color: ColorPalette.allPersons,
              fontSize: 20,
              fontStyle: FontStyle.normal),
        ),
      ],
    );
  }
}

class AllEpisodes extends StatefulWidget {
  const AllEpisodes({Key key}) : super(key: key);

  @override
  _AllEpisodesState createState() => _AllEpisodesState();
}

class _AllEpisodesState extends State<AllEpisodes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.all(10),
      width: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.all(8),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(right: 10), child: InkWell(
                onTap: (){},
                child: Text(
                  'СЕЗОН 1',
                  style: TextStyle(fontSize: 12, color: ColorPalette.nameColor,letterSpacing: 5),
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(right: 10), child: InkWell(
                onTap: (){},
                child: Text(
                  'СЕЗОН 2',
                  style: TextStyle(fontSize: 12, color: ColorPalette.nameColor,letterSpacing: 5),
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(right: 10), child: InkWell(
                onTap: (){},
                child: Text(
                  'СЕЗОН 3',
                  style: TextStyle(fontSize: 12, color: ColorPalette.nameColor,letterSpacing: 5),
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(right: 10), child: InkWell(
                onTap: (){},
                child: Text(
                  'СЕЗОН 4',
                  style: TextStyle(fontSize: 12, color: ColorPalette.nameColor,letterSpacing: 5),
                ),
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 3.0,
      selectedFontSize: 10,
      iconSize: 30,
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPalette.hoverColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: ColorPalette.hoverColor,
          icon: Icon(
            Icons.adb_outlined,
            color: ColorPalette.live,
          ),
          title: Text(
            'Персонажи',
            style: TextStyle(color: ColorPalette.live),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.ac_unit,
            color: ColorPalette.mainColor,
          ),
          title: Text(
            'Локации',
            style: TextStyle(color: ColorPalette.mainColor),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.live_tv,
            color: ColorPalette.mainColor,
          ),
          title: Text(
            'Эпизоды',
            style: TextStyle(color: ColorPalette.mainColor),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: ColorPalette.mainColor,
          ),
          title: Text(
            'Настройки',
            style: TextStyle(color: ColorPalette.mainColor),
          ),
        ),
      ],
    );
  }
}
