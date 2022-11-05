import 'package:flutter/material.dart';
import 'package:perkantas/views/pages/home.dart';
import 'package:perkantas/views/pages/pdkt/about_me.dart';
import 'package:perkantas/views/pages/pdkt/games.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const Home(),
  '/pdkt': (context) => const AboutMe(),
  '/pdkt/games': (context) => const Games(),
};