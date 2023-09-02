import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../core/widget/background.dart';
import '../core/widget/base_widget.dart';
import '../features/weather/bloc/weather_bloc.dart';
import '../features/weather/data/search_repo.dart';
import '../features/weather/widget/body.dart';
import '../features/weather/widget/bottom.dart';
import '../features/weather/widget/top.dart';
import '../theme.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
      create: (_) => WeatherBloc(SearchRepo()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeApp.get(),
        home: CustomPaint(
          painter: BackgroundPainter(),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: PreferredSize(
                preferredSize: const  Size.fromHeight(56),
                child: BlocBuilder<WeatherBloc, WeatherState>(
                  builder: (context, state) {
                    return AppBar(
                        title: ListTile(
                      leading: SvgPicture.asset('assets/icons/pin.svg'),
                      title: Text(
                        '${state.weatherDataModel.name}, ${state.weatherDataModel.sys.country}',
                      ),
                    ));
                  },
                ),
              ),
              body: CustomPaint(
                painter: CirclePainter(MediaQuery.sizeOf(context)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: BlocBuilder<WeatherBloc, WeatherState>(
                    builder: (context, state) {
                      return BaseWidget(
                        status: state.status,
                        widget: Column(
                          children: [
                            if (state.weatherDataModel.weather.isNotEmpty)
                              TopWeatherWidget(
                                  mainInfo: state.weatherDataModel.main,
                                  weather:
                                      state.weatherDataModel.weather.first),
                            padding,
                            BodyWeatherWidget(
                                namePlace:
                                    '${state.weatherDataModel.name}, ${state.weatherDataModel.sys.country}'),
                            padding,
                            BottomWeatherWidget(
                                wind: state.weatherDataModel.wind,
                                main: state.weatherDataModel.main)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  CirclePainter(this.sizeFromMediaQ);

  final Size sizeFromMediaQ;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 50, sizeFromMediaQ.width, 100);
    final paint = Paint()
      ..color = const Color.fromRGBO(189, 135, 255, 1)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 50);

    canvas.drawCircle(rect.center, rect.height, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
