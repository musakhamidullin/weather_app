import 'package:flutter/material.dart';

import 'theme.dart';

void main() async {
  runApp(const MainApp());

  await Future.delayed(Duration(seconds: 5));

  runApp(const MainApp1());

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Container(
        color: Colors.red,
      )
    );
  }
}



class MainApp1 extends StatelessWidget {
  const MainApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Container(
        color: Colors.blue,
      )
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         color: Colors.black
//       ),
//       child: CustomPaint(
//         painter: ToPaint(),
//       ),
//     );
//   }
// }

class ToPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Paint paint = Paint()..color = Colors.pink;

    paint.shader = const LinearGradient(colors: [
      primary,
      Colors.black,
    ],
    begin: Alignment(0, 0),
    end: Alignment(0.35, 1),
    stops: [0,1],
    ).createShader(rect);
    
    canvas.drawRect(rect,paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}