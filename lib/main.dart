import 'package:flutter/material.dart';
import 'package:ser/PageData.dart';
import 'package:ser/aprender.dart';
import 'package:ser/aprender_page.dart';
import 'package:ser/bienvenido.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:ser/creditos.dart';
import 'globals.dart' as globals;

void main() {
  globals.aprender_page = 0;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () => MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomeSER(
                index: 0,
              ),
            ));
  }
}

class HomeSER extends StatefulWidget {
  int index = 0;
  HomeSER({required index});
  @override
  _HomeSERState createState() {
    return _HomeSERState();
  }
}

class _HomeSERState extends State<HomeSER> {
  final screens = [
    Center(
      child: Bienvenido(),
    ),
    Center(
      child: Aprender(),
    ),
    Center(child: Creditos())
  ];

  //Adding the main color of the app
  //Color mainColor = Color(0xFF177767);
  Color mainColor = Color.fromARGB(255, 82, 179, 163);
  Color secColor = Color.fromARGB(255, 1, 90, 75);
  var containerRadius = Radius.circular(30.0);
  //Adding a list of image URL to simulate the avatar picture

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Proyecto S.E.R."),
          backgroundColor: mainColor,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              child: ClipOval(
                child: Image.asset(
                  'assets/ser.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: FloatingNavbar(
            backgroundColor: Color.fromARGB(255, 20, 103, 89),
            selectedItemColor: secColor,
            items: [
              FloatingNavbarItem(icon: Icons.home, title: 'Benvenido'),
              FloatingNavbarItem(icon: Icons.book, title: 'Aprender'),
              FloatingNavbarItem(icon: Icons.person, title: 'Creditos'),
            ],
            currentIndex: widget.index,
            onTap: (int val) => setState(() => widget.index = val),
          ),
        ),
        body: screens[widget.index]);
  }
}
