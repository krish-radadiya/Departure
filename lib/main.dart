import 'package:bhagvat_geeta/modules/screen/homescreen/views/homescreen.dart';
import 'package:bhagvat_geeta/modules/screen/introscreen/views/intro.dart';
import 'package:flutter/material.dart';

import 'modules/screen/details_screen/views/details_screen.dart';
import 'modules/screen/splesh_screen/views/splash.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splash_screens(),
        'intro': (context) => Intro_screen(),
        'home': (context) => homescreen(),
        'details': (context) => Home_page(),
      },
    ),
  );
}
