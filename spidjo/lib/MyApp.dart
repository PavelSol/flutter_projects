import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spidjo/router/routes.dart';
import 'package:spidjo/theme/dark_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
      title: 'Spider-robot joystick',
      theme: dark_theme,
      routes: routes,
    );
  }
}
