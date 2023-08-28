import 'package:flutter/material.dart';

class ThemeApp {
  ThemeApp(BuildContext context) {
    _fontSize = Theme.of(context).textTheme.titleLarge!.fontSize!;
  }

  static double _fontSize = 22;

  static ThemeData get() {
    return ThemeData(
        useMaterial3: true,
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ))),
        primaryColor: primary,
        fontFamily: 'SF Pro Display',
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.black, fontSize: _fontSize),
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
        ));
  }
}

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE1E0FF),
  100: Color(0xFFB5B3FF),
  200: Color(0xFF8380FF),
  300: Color(0xFF514DFF),
  400: Color(0xFF2C26FF),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF0600FF),
  700: Color(0xFF0500FF),
  800: Color(0xFF0400FF),
  900: Color(0xFF0200FF),
});
const int _primaryPrimaryValue = 0xFF0700FF;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFBFBFFF),
  700: Color(0xFFA6A6FF),
});
const int _primaryAccentValue = 0xFFF2F2FF;
