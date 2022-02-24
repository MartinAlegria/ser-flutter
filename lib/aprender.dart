import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:ser/tiles.dart';
import 'package:ser/bienvenido.dart';
import 'package:ser/widgets/discover_small_card.dart';
import 'package:ser/PageData.dart';
import 'package:ser/aprender_page.dart';
import 'globals.dart' as globals;

class Aprender extends StatefulWidget {
  @override
  _AprenderState createState() => _AprenderState();
}

class _AprenderState extends State<Aprender> {
  int page = 0;

  final pages = [
    PageData(
        title: "Daño Que Causa La Basura", text: "text", icon: Icons.error),
    PageData(title: "Organicos", text: "text", icon: Icons.local_florist),
    PageData(title: "Inorganicos", text: "text", icon: Icons.delete_sweep),
    PageData(title: "Infecciosos", text: "text", icon: Icons.warning),
    PageData(title: "Electronicos", text: "text", icon: Icons.computer),
    PageData(
        title: "Residuos de Manejo Especial",
        text: "text",
        icon: Icons.folder_special),
    PageData(
        title: "Disposicion Final de Residuos",
        text: "text",
        icon: Icons.delete_sweep),
    PageData(
        title: "Gestion Fuera de Lugar",
        text: "text",
        icon: Icons.directions_car),
    PageData(
        title: "Aprovechar los Residuos", text: "text", icon: Icons.lightbulb),
    PageData(
        title: "Economia Ciruclar", text: "text", icon: Icons.monetization_on),
    PageData(title: "Cuidados del Agua", text: "text", icon: Icons.water),
    PageData(
        title: "Capacitacion a Instituciones",
        text: "text",
        icon: Icons.landscape_rounded),
  ];

  //Adding the main color of the app
  Color mainColor = Color(0xFF177767);
  Color secColor = Color.fromARGB(255, 175, 226, 218);
  var containerRadius = Radius.circular(30.0);
  //Adding a list of image URL to simulate the avatar picture
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: (globals.aprender_page > 0)
            ? AprenderPage(
                data: pages[globals.aprender_page - 1],
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
