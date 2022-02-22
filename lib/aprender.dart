import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:ser/widgets/discover_small_card.dart';

class Aprender extends StatefulWidget {
  @override
  _AprenderState createState() => _AprenderState();
}

class _AprenderState extends State<Aprender> {
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
    Icons.dangerous,
    Icons.food_bank,
    Icons.tab_rounded,
    Icons.account_balance_sharp,
    Icons.label,
    Icons.padding,
    Icons.face,
    Icons.wallet_giftcard,
    Icons.vaccines,
    Icons.qr_code_2_rounded,
    Icons.one_x_mobiledata_outlined,
    Icons.h_mobiledata_sharp,
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
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 20.0),
                      child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 19,
                                  mainAxisExtent: 125,
                                  mainAxisSpacing: 19),
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          children: <Widget>[
                            for (int i = 0; i <= tiles.length - 1; i++)
                              new Container(
                                  width: 100,
                                  height: 100,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 0, 0, 0)
                                              .withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 15,
                                          offset: Offset(2, 7),
                                        ),
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
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              FractionalOffset.bottomCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 2),
                                              child: //Your widget here,
                                                  Icon(
                                                icons[i],
                                                color: Colors.white,
                                              )),
                                        ),
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
                                  ))
                          ]))))
        ]));
  }
}
