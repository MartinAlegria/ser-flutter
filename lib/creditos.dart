import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:ser/aprender_page.dart';
import 'pages_list.dart' as pages;
import 'PageData.dart';
import './widgets/page_modal.dart';

class Creditos extends StatefulWidget {
  @override
  _CreditosState createState() => _CreditosState();
}

class _CreditosState extends State<Creditos> {
  //Adding the main color of the app

  final creditos = pages.pages.last;

  Color mainColor = Color(0xFF177767);
  Color secColor = Color.fromARGB(255, 1, 90, 75);
  var containerRadius = Radius.circular(30.0);
  //Adding a list of image URL to simulate the avatar picture
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: AprenderPage(
          data: creditos,
          returnToTiles: (int x) {},
          back: false,
        ));
  }
}
