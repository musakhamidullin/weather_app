import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../theme.dart';

class TopWeatherWidget extends StatelessWidget {
  const TopWeatherWidget(
      {super.key, required this.mainInfo, required this.weather});

  final MainInfo mainInfo;
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        if (weather.main.$1.isNotEmpty)
          SizedBox(height: 200, child: Image.asset(weather.main.$1)),
        Text(
          '${mainInfo.temp.round()}°',
          style: theme.textTheme.displayLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.roboto().fontFamily),
        ),
        padding,
        if(weather.description.isNotEmpty)
        Text(
          '${weather.description[0].toUpperCase()}${weather.description.substring(1)}',
          style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontWeight: FontWeight.bold),
        ),
        padding,
        Text(
          'Мин: ${mainInfo.tempMin.round()}°C Макс: ${mainInfo.tempMax.round()}°C',
          style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
