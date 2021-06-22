import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/theme/color_theme.dart';
import 'package:rickmorty/theme/text_theme.dart';

class Hat extends StatelessWidget {
  var value = "200";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Всего персонажей $value',
            style: TextStyle(
                color: ColorPalette.allPersons,
                fontSize: 20,
                fontStyle: FontStyle.normal),
          ),
          VerticalDivider(
            width: 70,
          ),
          IconButton(
              icon: Image.asset(MainIcons.grid, color: ColorPalette.allPersons,),
              onPressed: () {})
        ],
      ),
    );
  }
}
