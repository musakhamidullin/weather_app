
import 'package:flutter/material.dart';

import '../core/widget/background.dart';
import '../theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialApp(
      theme: ThemeApp.get(),
      home: Material(
        child: BackgroundWidget(
          widget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 64, bottom: 64),
                child: Text('WEATHER\nSERVICE', style: theme.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
              const Spacer(),
              Flexible(child: Text('dawn is coming soon', style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.white
                ),)),
            ],
          ),
        ),
      ),
    );
  }
}