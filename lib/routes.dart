import 'package:flutter/material.dart';
import 'package:perkantas/views/pages/home.dart';
import 'package:perkantas/views/pages/pdkt/about_me.dart';
import 'package:perkantas/views/pages/pdkt/games.dart';
import 'package:perkantas/views/pages/pemuridan/permudian.dart';
import 'package:perkantas/views/pages/penginjilan/about_him.dart';
import 'package:perkantas/views/pages/penginjilan/about_him_2.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const Home(),
  '/pdkt': (context) => const AboutMe(),
  '/pdkt/games': (context) => const Games(),
  '/injil': (context) => const AboutHim(),
  '/injil/page/2': (context) => const AboutHim2(),
  '/pemuridan': (context) => const Pemuridan()
};
