import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/core.dart';
import '../../../theme.dart';

class BottomWeatherWidget extends StatelessWidget {
  const BottomWeatherWidget(
      {super.key, required this.wind, required this.main});

  final Wind wind;
  final MainInfo main;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: const BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/icons/wind.svg'),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  '${wind.speed.round()}м/с',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: theme.textTheme.bodyLarge?.fontSize),
                ),
                const Spacer(),
                Text(
                  wind.windDirection,
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.normal),
                )
              ],
            ),
            padding,
            Row(
              children: [
                SvgPicture.asset('assets/icons/drop.svg'),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  '${main.humidity.$1}%',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: theme.textTheme.bodyLarge?.fontSize),
                ),
                const Spacer(),
                Text(
                  main.humidity.$2,
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.normal),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
