import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/resources/model/rick_and_morty_model.dart';

import 'package:rickmorty/screens/my_screen/widgets/profile_screen.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_grid.dart';
import 'package:rickmorty/theme/color_theme.dart';
import 'package:rickmorty/theme/text_theme.dart';



// ignore: must_be_immutable
class CharactersList extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: personList.length,
      itemBuilder: (context, item) {
        return new InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CharacterProfileScreen(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    child: Image(
                      image: AssetImage(personList[item].image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                )
              ],
            ),
          ),
        );
      },
      shrinkWrap: true,
    );
  }
}
