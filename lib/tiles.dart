import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:ser/widgets/discover_small_card.dart';

class Tiles extends StatelessWidget {
  final Function(int) onPageSelected;

  Tiles({required this.onPageSelected});

  final tiles = [
    "Daño Que Causa La Basura",
    "Organicos",
    "Inorganicos",
    "Infecciosos",
    "Electronicos",
    "Residuos de Manejo Especial",
    "Disposicion Final de Residuos",
    "Gestion Fuera de Lugar",
    "Aprovechar los Residuos",
    "Economia Ciruclar",
    "Cuidados del Agua",
    "Capacitacion a Instituciones",
  ];

  final icons = [
    Icons.error,
    Icons.local_florist,
    Icons.delete_sweep,
    Icons.warning,
    Icons.computer,
    Icons.folder_special,
    Icons.delete_sweep,
    Icons.directions_car,
    Icons.lightbulb,
    Icons.monetization_on,
    Icons.water,
    Icons.landscape_rounded,
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
        body: Column(children: [
          //First let's create the Story time line container

          //Now let's create our chat timeline
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: containerRadius, topRight: containerRadius),
            ),
            child: Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 19,
                        mainAxisExtent: 125,
                        mainAxisSpacing: 19),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: <Widget>[
                      for (int i = 0; i <= tiles.length - 1; i++)

                        //Widget Redondito
                        new GestureDetector(
                            onTap: () {
                              onPageSelected(i + 1);
                            },
                            child: Container(
                                width: 100,
                                height: 100,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[500]!,
                                        spreadRadius: 1,
                                        blurRadius: 15,
                                        offset: Offset(4, 4),
                                      ),
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4, -4),
                                          blurRadius: 15,
                                          spreadRadius: 1),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        colors: [
                                          mainColor,
                                          Color.fromARGB(255, 82, 212, 180)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight)),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: FractionalOffset.bottomCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: //Your widget here,
                                              Icon(
                                            icons[i],
                                            color: Colors.white,
                                          )),
                                    ),
                                    Center(
                                      child: Text(
                                        tiles[i],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                )))
                    ])),
          ))
        ]));
  }
}
