import 'package:flutter/material.dart';
import 'package:rickmorty/theme/color_theme.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      height: 1,
      color: ColorPalette.allPersons,
      indent: 17,
      endIndent: 18,
    );
  }
}
