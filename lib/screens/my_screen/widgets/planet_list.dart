import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty/components/main_app_bar.dart';
import 'package:rickmorty/components/main_bottom_bar.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/resources/model/rick_and_morty_model.dart';
import 'package:rickmorty/screens/my_screen/widgets/personPage.dart';
import 'package:rickmorty/screens/my_screen/widgets/planet_info.dart';
import 'package:rickmorty/theme/color_theme.dart';

import 'charactersScreen.dart';
import 'profile_screen.dart';

class PlanetList extends StatelessWidget {
  List<PlanetViewData> planets = [
    PlanetViewData(
        planetID: 1,
        image: 'assets/images/PlanetEarth.png',
        planet_name: 'Земля С-137',
        planet_type: 'Мир',
        elipse: 'assets/svg_icons/Ellipse.png',
        planet_from: 'Измерение С-137'),
    PlanetViewData(
        planetID: 2,
        image: 'assets/images/Anatomy_Park.png',
        planet_name: 'Анатомический парк',
        planet_type: 'Мир',
        elipse: 'assets/svg_icons/Ellipse.png',
        planet_from: 'Измерение С-137'),
    PlanetViewData(
        planetID: 3,
        image: 'assets/images/PlanetEarth.png',
        planet_name: 'Земля С-137',
        planet_type: 'Мир',
        elipse: 'assets/svg_icons/Ellipse.png',
        planet_from: 'Измерение С-137'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorPalette.mainColor,
        automaticallyImplyLeading: false,
        title: SearchTextFiledPlanet(),
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
          preferredSize: Size.fromHeight(40),
          child: TotalPlanets(),
        ),
      ),
      bottomNavigationBar: MainBottomBar(),
      backgroundColor: ColorPalette.mainColor,
      body: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: planets.length,
        itemBuilder: (context, item) {
          return new InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PlanetWithCharacters(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Column(
                          children: [
                            Image.asset(
                              planets[item].image,
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              color: ColorPalette.hoverColor,
                              child: Column(
                                children: [
                                  Text(
                                    planets[item].planet_name,
                                    style: TextStyle(
                                        color: ColorPalette.nameColor),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        planets[item].planet_type,
                                        style: TextStyle(
                                            color: ColorPalette.allPersons),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            planets[item].elipse,
                                          ),
                                          Text(
                                            planets[item].planet_from,
                                            style: TextStyle(
                                                color: ColorPalette.allPersons),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ]),
              ));
        },
        shrinkWrap: true,
      ),
    );
  }
}
