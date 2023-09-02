import 'package:flutter/material.dart';

import '../../theme.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BackgroundPainter(),
      child: widget,
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint paint = Paint();

    paint.shader = const LinearGradient(
      colors: [
        primary,
        Colors.black,
      ],
      begin: Alignment(0, 0),
      end: Alignment(0.35, 1),
      stops: [0, 1],
    ).createShader(rect);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
