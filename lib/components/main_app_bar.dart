import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty/resources/icons.dart';
import 'package:rickmorty/theme/color_theme.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  String count = "200";
  MainAppBar() : preferredSize = Size.fromHeight(kToolbarHeight);
  @override
  final Size preferredSize;
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorPalette.mainColor,
      automaticallyImplyLeading: true,
      title: TextField(
        decoration: InputDecoration(
          hintText: 'Найти персонажа',
          hintStyle: TextStyle(color: ColorPalette.personType),
          prefixIcon: Image.asset(MainIcons.find, color: ColorPalette.allPersons,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.all(10),
          filled: true,
          fillColor: ColorPalette.hoverColor,
        ),
      ),
      actions: [
        VerticalDivider(
          color: ColorPalette.personType,
          width: 1,
          indent: 12,
          endIndent: 12,
          thickness: 1,
        ),
        IconButton(
            icon: Image.asset(MainIcons.sort, color: ColorPalette.allPersons,),
            onPressed: () {})
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Всего персонажей : $count',
              style: TextStyle(
                  color: ColorPalette.allPersons,
                  fontSize: 20,
                  fontStyle: FontStyle.normal),
            ),

            IconButton(
                icon: Image.asset(MainIcons.grid, color: ColorPalette.allPersons,),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
