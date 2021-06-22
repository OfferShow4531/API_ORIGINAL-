import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:rickmorty/resources/model/MyData.dart';
import 'package:rickmorty/resources/model/rick_and_morty_model.dart';
import 'package:rickmorty/screens/my_screen/widgets/charactersScreen.dart';
import 'package:rickmorty/screens/my_screen/widgets/episode_screen.dart';
import 'package:rickmorty/screens/my_screen/widgets/planet_info.dart';
import 'package:rickmorty/screens/my_screen/widgets/planet_list.dart';
import 'package:rickmorty/theme/color_theme.dart';

import 'profile_screen.dart';

List<PersonViewData> infoList = [
  PersonViewData(
    chapt: 1,
    image: 'assets/images/1Episode.png',
    chapter_numb: 'Серия 1',
    chapter_name: 'Пилот',
    date: '2 декабря 2013',
  ),
  PersonViewData(
    chapt: 2,
    image: 'assets/images/2Episode.png',
    chapter_numb: 'Серия 2',
    chapter_name: 'Пёс-газонокосильщик',
    date: '9 декабря 2013',
  ),
  PersonViewData(
    chapt: 3,
    image: 'assets/images/3Episode.png',
    chapter_numb: 'Серия 3',
    chapter_name: 'Анатомический парк',
    date: '16 декабря 2013',
  ),
  PersonViewData(
    chapt: 4,
    image: 'assets/images/4Episode.png',
    chapter_numb: 'Серия 4',
    chapter_name: 'М. Найт \nШьямал-Инопланетяне!',
    date: '13 января 2014',
  ),
  PersonViewData(
    chapt: 5,
    image: 'assets/images/5Episode.png',
    chapter_numb: 'Серия 5',
    chapter_name: 'Мисикс и разрушение',
    date: '20 января 2014',
  ),
  PersonViewData(
    chapt: 6,
    image: 'assets/images/6Episode.png',
    chapter_numb: 'Серия 6',
    chapter_name: 'Напиток Рика №9',
    date: '20 января 2014',
  ),
  PersonViewData(
    chapt: 7,
    image: 'assets/images/7Episode.png',
    chapter_numb: 'Серия 7',
    chapter_name: 'Воспитание Газорпазорпа',
    date: '20 января 2014',
  ),
];

Widget fullInfo(String name, String isalife, String info) {
  Color getColor(String status) {
    var _color = Colors.white;
    switch (status) {
      case "живой":
        {
          _color = ColorPalette.live;
        }
        break;

      case "мертвый":
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

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        name,
        style: TextStyle(fontSize: 40, color: Colors.white),
      ),
      Text(isalife, style: TextStyle(color: getColor(isalife))),
      Text(
        info,
        style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget personInfo(
    String gender, String genderName, String rase, String rase_type) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Expanded(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              gender,
              style: TextStyle(color: ColorPalette.allPersons),
            ),
            Text(genderName, style: TextStyle(color: Colors.white))
          ],
        ),
      )),
      Padding(padding: EdgeInsets.all(10)),
      Expanded(
          child: Container(
        child: Column(
          children: [
            Text(rase, style: TextStyle(color: ColorPalette.allPersons)),
            Text(rase_type, style: TextStyle(color: Colors.white))
          ],
        ),
      )),
    ],
  );
}





Widget myCardView(String currentname, String location, Icon icon,context) {
  return ListTile(
    title: Text(
      currentname,
      style: TextStyle(color: ColorPalette.allPersons),
    ),
    subtitle: Text(location, style: TextStyle(color: Colors.white)),
    trailing: IconButton(
      icon: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PlanetList(),
            ),
        );
      },
    ),
  );
}

Widget episodes() {
  return Column(
    children: [
      ListTile(
        title: Text(
          "Эпизоды",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        trailing: Text(
          "Все эпизоды",
          style: TextStyle(color: ColorPalette.allPersons),
        ),
      )
    ],
  );
}

Widget chapterCardView() {
  return ListView.builder(
    padding: const EdgeInsets.all(5),
    itemCount: infoList.length,
    itemBuilder: (context, item) {
      return new InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => EpisodeList(),
            ),
          );
        },
        child: Row(
          children: [
            ClipRRect(
                child: Image(
                  image: AssetImage(infoList[item].image),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(10))),
            Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    infoList[item].chapter_numb,
                    style: TextStyle(
                      color: ColorPalette.episodeColor,
                      fontSize: 14
                    ),
                  ),
                  Text(
                    infoList[item].chapter_name,
                    style: TextStyle(
                        color: ColorPalette.nameColor,
                        fontSize: 16
                    ),
                  ),
                  Text(
                    infoList[item].date,
                    style: TextStyle(
                        color: ColorPalette.nameColor,
                        fontSize: 14
                    ),
                  ),

                ],
              ),
            ),
            Spacer(flex: 10,),
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          EpisodeList(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      );
    },
    shrinkWrap: true,
  );
}
