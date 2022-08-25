import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:ser/PageData.dart';
import 'package:ser/aprender.dart';
import 'package:ser/main.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:ser/widgets/floating_modal.dart';
import 'package:ser/widgets/long_tile.dart';
import 'package:ser/widgets/page_modal.dart';
import 'globals.dart' as globals;

class AprenderPage extends StatefulWidget {
  final PageData data;
  final Function(int) returnToTiles;
  bool? back = true;

  AprenderPage(
      {Key? key, required this.data, required this.returnToTiles, this.back});
  @override
  _AprenderPageState createState() {
    return _AprenderPageState();
  }
}

class _AprenderPageState extends State<AprenderPage> {
  //Adding the main color of the app

  Color mainColor = Color.fromARGB(255, 31, 159, 138);
  Color secColor = Color.fromARGB(255, 1, 90, 75);
  var containerRadius = Radius.circular(30.0);
  //Adding a list of image URL to simulate the avatar picture
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          children: [
            !(widget.back != null)
                ? GestureDetector(
                    onTap: () {
                      widget.returnToTiles(0);
                    },
                    child: Icon(Icons.arrow_back),
                  )
                : Text(""),
            SizedBox(
              width: 10,
            ),
            Icon(widget.data.icon),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                widget.data.title,
                style: TextStyle(fontSize: 19.w),
              ),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
      body: Column(
        children: [
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
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    // Texto si existe
                    widget.data.text.length > 0
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text(
                              widget.data.text,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        : Text(""),

                    //Modals
                    widget.data.subtitle1.length > 0
                        ? PageModal(
                            title: widget.data.subtitle1,
                            text: widget.data.subtext1,
                          )
                        : (Text("")),

                    widget.data.subtitle2.length > 0
                        ? PageModal(
                            title: widget.data.subtitle2,
                            text: widget.data.subtext2,
                          )
                        : (Text("")),

                    widget.data.subtitle3.length > 0
                        ? PageModal(
                            title: widget.data.subtitle3,
                            text: widget.data.subtext3,
                          )
                        : (Text("")),
                    widget.data.subtitle4.length > 0
                        ? PageModal(
                            title: widget.data.subtitle4,
                            text: widget.data.subtext4,
                          )
                        : (Text("")),

                    widget.data.subtitle5.length > 0
                        ? PageModal(
                            title: widget.data.subtitle5,
                            text: widget.data.subtext5,
                          )
                        : (Text("")),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
