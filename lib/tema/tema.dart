import 'package:flutter/material.dart';

const Color themePageColor = Color(0xff212121);
const Color themeIconColor = Color(0xff838385);
const Color themeSelectColor = Color(0xff98fb98);

final List<ThemeData> themes = [Theme];

final Theme = ThemeData(
  primaryColor: themePageColor,
  indicatorColor: themeSelectColor,
  cardColor: themeIconColor,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        fontFamily: 'FuturaPTMedium.otf',
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 12),
  ),
);
