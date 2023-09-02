import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../core/core.dart';
import '../../../theme.dart';
import '../bloc/weather_bloc.dart';

class BodyWeatherWidget extends StatefulWidget {
  const BodyWeatherWidget({super.key, required this.namePlace});

  final String namePlace;

  @override
  State<BodyWeatherWidget> createState() => _BodyWeatherWidgetState();
}

class _BodyWeatherWidgetState extends State<BodyWeatherWidget> {
  static const itemWidth = 70.0;
  final ScrollController _scrollController = ScrollController();
  int _upcomingItemIndex = 0; // Index of upcoming item

  ForecastList temp = const ForecastList();

  var list = <ForecastList>[];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);

    list = context.read<WeatherBloc>().state.forecastList.list;

    if (list.isNotEmpty) temp = list.first;
  }

  @override
  void didUpdateWidget(covariant BodyWeatherWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    list = context.read<WeatherBloc>().state.forecastList.list;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    final itemIndex = (_scrollController.offset ~/
        itemWidth); // Calculate upcoming item index
    if (itemIndex >= 0 && itemIndex < list.length) {
      setState(() {
        _upcomingItemIndex = itemIndex;
      });

      final currentDate = DateTime.parse(temp.dtTxt).day;
      final upComingDate = DateTime.parse(list[_upcomingItemIndex].dtTxt).day;

      if (currentDate != upComingDate) {
        temp = list[_upcomingItemIndex];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: const BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          if (temp.dtTxt.isNotEmpty)
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: DateTime.parse(temp.dtTxt).day == DateTime.now().day
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Сегодня',
                            style: theme.textTheme.bodyLarge,
                          ),
                          Text(
                            DateFormat('d MMMM').format(DateTime.now()),
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      )
                    : Text(
                        DateFormat('d MMMM').format(DateTime.parse(temp.dtTxt)),
                        style: theme.textTheme.bodyLarge,
                      )),
          const Divider(
            color: Colors.white,
            indent: 0,
            endIndent: 0,
            height: 0,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: SizedBox(
                height: 140,
                child: ListView.separated(
                  controller: _scrollController,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, i) => ForecastWidget(
                    forecastList: list[i],
                    color: i == _upcomingItemIndex ? Colors.red : Colors.white,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class ForecastWidget extends StatelessWidget {
  const ForecastWidget({
    super.key,
    required this.forecastList,
    required this.color,
  });

  final ForecastList forecastList;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 70,
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(color: color),
            color: Colors.white12,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                DateFormat('hh:mm').format(DateTime.parse(forecastList.dtTxt)),
                style: theme.textTheme.bodyMedium,
              ),
              padding,
              if (forecastList.weather.isNotEmpty)
                SvgPicture.asset(forecastList.weather.single.main.$2),
              padding,
              Text(
                '${forecastList.main.temp.round()}°',
                style: theme.textTheme.bodyLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
