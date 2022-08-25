import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:ser/tiles.dart';
import 'package:ser/bienvenido.dart';
import 'package:ser/PageData.dart';
import 'package:ser/aprender_page.dart';
import 'globals.dart' as globals;
import 'pages_list.dart' as pages;

class Aprender extends StatefulWidget {
  @override
  _AprenderState createState() => _AprenderState();
}

class _AprenderState extends State<Aprender> {
  int page = 0;

  //Adding the main color of the app
  //Color mainColor = Color(0xFF177767);
  Color mainColor = Color.fromARGB(255, 82, 179, 163);
  var containerRadius = Radius.circular(30.0);
  //Adding a list of image URL to simulate the avatar picture
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: (globals.aprender_page > 0)
            ? AprenderPage(
                data: pages.pages[globals.aprender_page - 1],
                returnToTiles: (int ret) {
                  setState(() {
                    globals.aprender_page = ret;
                  });
                  print("Nueva page ${globals.aprender_page}");
                },
              )
            : Tiles(onPageSelected: (int pageSelected) {
                setState(() {
                  page = pageSelected;
                  globals.aprender_page = pageSelected;
                });
                print("PAGEEEE -> $pageSelected");
              }));
  }
}
