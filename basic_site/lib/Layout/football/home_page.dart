// https://www.youtube.com/watch?v=E6fLm5XlJDY&t=397s

import 'package:basic_site/Layout/football/menu_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/football.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            CustomMenuBar(),
            // Spacer(),
            // Body(),
            // Spacer(
            //   flex: 2,
            // )
          ],
        ),
      ),
    );
  }
}
