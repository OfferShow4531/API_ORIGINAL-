import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty/theme/color_theme.dart';

class TextThemes {
  static var findPerson = TextStyle(
    fontSize: 16,
  );

  static var statusPerson = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 10,
  );
  static var nameAsign = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: Colors.white);
  static var gender = TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
      fontSize: 12,
      color: ColorPalette.personType);
}
