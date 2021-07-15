// https://www.youtube.com/watch?v=iNSsfNl6T8g&t=33s

import 'package:basic_site/Layout/Navbar/navbar_button.dart';
import 'package:flutter/material.dart';

double collapsableHeight = 0.0;
Color selected = Color(0xffffffff);
Color notSelected = Color(0xafffffff);
Color navBarColor = Color(0xff009900);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          AnimatedContainer(
            margin: EdgeInsets.only(top: 79.0),
            duration: Duration(milliseconds: 375),
            curve: Curves.ease,
            height: (width < 800.0) ? collapsableHeight : 0.0,
            width: double.infinity,
            color: navBarColor,
            child: SingleChildScrollView(
              child: Column(
                children: navBarItems,
              ),
            ),
          ),
          Container(
            color: navBarColor,
            height: 80.0,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NavBar',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Color(0xffffffff)
                  ),
                ),
                LayoutBuilder(builder: (context, constraints){
                  if(width < 800.0) {
                    return NavBarButton(
                      onPressed: () {
                        if(collapsableHeight == 0.0) {
                          setState(() {
                            collapsableHeight = 240.0;
                          });
                        }else if(collapsableHeight == 240.0){
                          setState(() {
                            collapsableHeight = 0.0;
                          });
                        }
                      },
                    );
                  }else{
                    return Row(
                      children: navBarItems,
                    );
                  }
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> navBarItems = [
  NavBarItem(
    text: 'About',
  ),
  NavBarItem(
    text: 'Explore',
  ),
  NavBarItem(
    text: 'Search',
  ),
  NavBarItem(
    text: 'Help',
  ),
  NavBarItem(
    text: 'Others',
  ),
];

class NavBarItem extends StatefulWidget {
  final String text;

  const NavBarItem({required this.text});

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = Color(0xffffffff);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {},
          child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
