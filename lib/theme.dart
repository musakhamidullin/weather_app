import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const padding = SizedBox(height: 16);

const paddingX2 = SizedBox(height: 32);

const empty = SizedBox.shrink();

class ThemeApp {
  ThemeApp(BuildContext context) {
    _fontSize = Theme.of(context).textTheme.titleLarge!.fontSize!;
  }

  static double _fontSize = 22;

  static ThemeData get() {
    return ThemeData(

        textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(
              color: Colors.white, fontFamily: GoogleFonts.roboto().fontFamily),
        ),
        listTileTheme: const ListTileThemeData(textColor: Colors.white),
        useMaterial3: true,
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                textStyle:
                    MaterialStatePropertyAll(TextStyle(color: Colors.white)),
                backgroundColor: MaterialStatePropertyAll(primary),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ))),
        primaryColor: primary,
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: _fontSize,
              fontFamily: GoogleFonts.roboto().fontFamily),
          color: Colors.transparent,
          shadowColor: Colors.transparent,
        ));
  }
}
 const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE7E0FC),
  100: Color(0xFFC3B3F8),
  200: Color(0xFF9B80F4),
  300: Color(0xFF734DEF),
  400: Color(0xFF5526EB),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF3100E5),
  700: Color(0xFF2A00E2),
  800: Color(0xFF2300DE),
  900: Color(0xFF1600D8),
});
 const int _primaryPrimaryValue = 0xFF3700E8;

 const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF9F9AFF),
  700: Color(0xFF8780FF),
});
 const int _primaryAccentValue = 0xFFCFCDFF;