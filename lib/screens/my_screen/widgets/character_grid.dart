import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/resources/model/rick_and_morty_model.dart';

import 'package:rickmorty/theme/color_theme.dart';
import 'package:rickmorty/theme/text_theme.dart';

import 'profile_screen.dart';

class CharacterGrid extends StatelessWidget {
  List<ModelViewData> personGrid = [
    ModelViewData(
      id: 1,
      image: 'assets/images/RickNew.png',
      status: 'живой',
      name: 'Рик Санчез',
      gender: 'Человек, Мужской',
      now: 'В сети',
  ),
    ModelViewData(
      id: 2,
      image: 'assets/images/MortyNew.png',
      status: 'живой',
      name: 'Морти Смитт',
      gender: 'Человек, Мужской',
      now: 'В сети',
    ),
    ModelViewData(
      id: 3,
      image: 'assets/images/SummerNew.png',
      status: 'живой',
      name: 'Саммер Смитт',
      gender: 'Человек, Женский',
      now: 'Не беспокоить',
    ),
    ModelViewData(
      id: 4,
      image: 'assets/images/DirectNew_.png',
      status: 'живой',
      name: 'Директор Агенства',
      gender: 'Человек, Мужской',
      now: 'Не беспокоить',
    ),
    ModelViewData(
      id: 5,
      image: 'assets/images/AlberEinsteinNew.png',
      status: 'мертвый',
      name: 'Альберт Эйнштейн',
      gender: 'Человек, Мужской',
      now: 'Отключен',
    ),
    ModelViewData(
      id: 6,
      image: 'assets/images/Rise.png',
      status: 'мертвый',
      name: 'Алан Райлс',
      gender: 'Человек, Мужской',
      now: 'Отключен',
    ),
  ];
  // bool isGrid = true;
  //
  // CharacterGrid({
  //   Key key,
  //   @required this.isGrid,
  // }): super(key: key);
  @override
  Widget build(BuildContext context) {
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

    return GridView.builder(
      shrinkWrap: true,
      itemCount: personGrid.length,
      itemBuilder: (context,item){
      return new GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CharacterProfileScreen(),
            ),
          );
      },
      child: Column(
        children: [
          CircleAvatar(
            child: Image.asset(personGrid[item].image),
            radius: 60,
          ),
          Text(
            personGrid[item].status,
            style: TextStyle(
                color: getColor(personGrid[item].status),fontSize: 20),
          ),
          Text(
            personGrid[item].name,
            style: TextThemes.nameAsign,
            textAlign: TextAlign.center,
          ),
          Text(
            personGrid[item].gender,
            style: TextThemes.gender,
          ),
          Text(
            personGrid[item].now,
            style: TextStyle(color: getColorNow(personGrid[item].now),fontSize: 12),
          )
        ],


      ),
    );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      childAspectRatio: 0.7,
        crossAxisCount: 2,
    ),
    );
  }
}
