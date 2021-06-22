import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty/components/NewAppBar.dart';
import 'package:rickmorty/resources/model/rick_and_morty_model.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_list.dart';
import 'package:rickmorty/screens/my_screen/widgets/profile_screen.dart';
import 'package:rickmorty/theme/color_theme.dart';

import '../screen.dart';

List<PlanetInfoData> planet_info = [
  PlanetInfoData(
    planetID: 1,
    planetName: 'Земля С-137',
    planetType: 'Мир * Измерение С-137',
    planetInfo: 'Это планета, на которой проживает человеческая раса, и главное место для персонажей Рика и Морти. Возраст этой Земли более 4,6 миллиардов лет, и она является четвертой планетой от своей звезды.',
  )
];

List<ModelViewData> personList = [
  ModelViewData(
      id: 1,
      image: 'assets/images/Rick.png',
      status: 'ЖИВОЙ',
      name: 'Рик Санчез',
      gender: 'Человек, Мужской',
      now: 'В сети'),
  ModelViewData(
      id: 2,
      image: 'assets/images/Morty.png',
      status: 'ЖИВОЙ',
      name: 'Морти Смитт',
      gender: 'Человек, Мужской',
      now: 'В сети'),
  ModelViewData(
      id: 3,
      image: 'assets/images/Direct.png',
      status: 'ЖИВОЙ',
      name: 'Директор Агенства',
      gender: 'Человек, Мужской',
      now: 'Не беспокоить'),
  ModelViewData(
      id: 4,
      image: 'assets/images/SummerSmitt.png',
      status: 'ЖИВОЙ',
      name: 'Саммер Смитт',
      gender: 'Человек, Женский',
      now: 'Не беспокоить'),
  ModelViewData(
      id: 5,
      image: 'assets/images/AlbertEinstein.png',
      status: 'МЕРТВЫЙ',
      name: 'Альберт Эйнштейн',
      gender: 'Человек, Мужской',
      now: 'Отключен'),
  ModelViewData(
      id: 6,
      image: 'assets/images/AlanRise.png',
      status: 'МЕРТВЫЙ',
      name: 'Алан Райлс',
      gender: 'Человек, Мужской',
      now: 'Отключен'),
];

class PlanetWithCharacters extends StatelessWidget {
  const PlanetWithCharacters({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getColor(String status) {
      var _color = Colors.white;
      switch (status) {
        case "ЖИВОЙ":
          {
            _color = ColorPalette.live;
          }
          break;

        case "МЕРТВЫЙ":
          {
            _color = ColorPalette.dead;
          }
          break;

        default:
          {
            _color = Colors.yellow;
          }
          break;
      }
      return _color;
    }

    Color getColorNow(String stat) {
      var _color = Colors.white;
      switch (stat) {
        case "В сети":
          {
            _color = ColorPalette.live;
          }
          break;

        case "Не беспокоить":
          {
            _color = ColorPalette.episodeColor;
          }
          break;

        case "Отключен":
          {
            _color = ColorPalette.dead;
          }
          break;

        default:
          {
            _color = Colors.yellow;
          }
          break;
      }
      return _color;
    }

    return Scaffold(
      appBar: PlanetAppBar(),
      backgroundColor: ColorPalette.mainColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(11),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: 1,
              itemBuilder: (context, item) {
                return new InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Column(
                      children: [
                        const SizedBox(height: 18),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              planet_info[item].planetName,
                              style: TextStyle(
                                  color: ColorPalette.nameColor, fontSize: 20),
                            ),
                            Text(
                              planet_info[item].planetType,
                              style: TextStyle(
                                color: ColorPalette.allPersons, fontSize: 12
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            Text(
                              planet_info[item].planetInfo,
                              style: TextStyle(
                                  color: ColorPalette.nameColor, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              shrinkWrap: true,
            ),
            Text(
              'Персонажи',
              style: TextStyle(
                color: ColorPalette.nameColor,
                fontSize: 18,
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: personList.length,
              itemBuilder: (context, item) {
                return new InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          child: Image(
                            image: AssetImage(personList[item].image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              personList[item].status,
                              style: TextStyle(
                                color: getColor(personList[item].status),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              personList[item].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              personList[item].gender,
                              style: TextStyle(
                                color: ColorPalette.allPersons,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              personList[item].now,
                              style: TextStyle(
                                color: getColorNow(personList[item].now),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 60, right: 0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CharacterProfileScreen(),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
