// import 'package:basic_site/Layout/football/home_page.dart';
import 'package:flutter/material.dart';

import 'Layout/Navbar/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Football Café',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      home: HomePage(),
    );
  }
}

