import 'package:flutter/material.dart';
import 'package:perkantas/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: customRoutes,
      theme: ThemeData(
        // textTheme: GoogleFonts.karlaTextTheme(textTheme),
        // fontFamily: GoogleFonts.karla().fontFamily,
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
