import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:rickmorty/components/NewAppBar.dart';
import 'package:rickmorty/components/hat.dart';
import 'package:rickmorty/components/main_app_bar.dart';
import 'package:rickmorty/components/main_bottom_bar.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/resources/images.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_grid.dart';
import 'package:rickmorty/screens/my_screen/widgets/personPage.dart';
import 'package:rickmorty/screens/my_screen/widgets/character_list.dart';
import 'package:rickmorty/theme/color_theme.dart';




class CharacterProfileScreen extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MySliverAppBar(),
      backgroundColor: ColorPalette.mainColor,
      body:SingleChildScrollView(
      scrollDirection: Axis.vertical,

        child: Column(
        children: <Widget>[
         Center(
           child: Column(
            children: [
          Image(
            fit: BoxFit.cover,
            isAntiAlias: true,
            gaplessPlayback: true,
            excludeFromSemantics: true,
            image: AssetImage(Images.rickNoBacks),
          ),
              fullInfo(
                  "Рик Санчез",
                  "живой",
                  "Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудность"
                      "и социопатия заставляют беспокоиться семью его дочери."),
              personInfo("Пол", "Мужской", "Расса", "Человек"),
              myCardView("Место рождения", "Земля С-137",
                  Icon(Icons.arrow_forward_ios_rounded),context),
              myCardView("Местоположение", "Земля (Измерение подмены)",
                  Icon(Icons.arrow_forward_ios_rounded),context),
              Divider(
                height: 20,
                color: ColorPalette.allPersons,
                indent: 1,
                endIndent: 1,
              ),
              episodes(),
              chapterCardView(),
             ],
           ),
         ),

        ],
      ),
      ),
    );
  }
}

