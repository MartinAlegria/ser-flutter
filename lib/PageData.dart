import 'package:flutter/material.dart';

class PageData {
  String title;
  String text;
  IconData icon;

  String subtitle1;
  String subtext1;

  String subtext2;
  String subtitle2;

  String subtitle3;
  String subtext3;

  String subtitle4;
  String subtext4;

  String subtitle5;
  String subtext5;

  String? img1, img2, img3, img4, img5;

  PageData(
      {required this.title,
      required this.text,
      required this.icon,
      required this.subtext1,
      required this.subtitle1,
      required this.subtext2,
      required this.subtitle2,
      required this.subtitle3,
      required this.subtext3,
      required this.subtitle4,
      required this.subtext4,
      required this.subtitle5,
      required this.subtext5,
      this.img1,
      this.img2,
      this.img3,
      this.img4,
      this.img5});
}
