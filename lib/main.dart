import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'firebase_options.dart';
import 'screens/splash.dart';
import 'screens/user_form.dart';
import 'theme.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await _fbInit();

    // mock, shoulde be native splash screen
    runApp(const SplashScreen());

    await Geolocator.checkPermission();
    await Geolocator.requestPermission();

    await Future.delayed(const Duration(seconds: 2));

    runApp(MaterialApp(theme: ThemeApp.get(), home: const UserFormScreen()));
  }, (error, stack) {
    debugPrint(stack.toString());
  });
}

Future<void> _fbInit() async {
  final app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseAuth.instanceFor(app: app);
}
