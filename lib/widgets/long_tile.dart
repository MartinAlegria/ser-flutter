import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class LongTile extends StatelessWidget {
  final String title;
  LongTile({required this.title});

  Color mainColor = Color(0xFF177767);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400.w,
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                colors: [mainColor, Color.fromARGB(255, 82, 212, 180)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: Text(
            this.title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15.w),
          ),
        ));
  }
}
