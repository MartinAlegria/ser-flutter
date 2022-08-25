import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:ser/PageData.dart';
import 'long_tile.dart';
import 'floating_modal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageModal extends StatelessWidget {
  final String title;
  final String text;
  final String? image;

  PageModal({required this.title, required this.text, this.image});
  Color mainColor = Color(0xFF177767);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => showFloatingModalBottomSheet(
              context: context,
              builder: (context) => ListView(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 30.w,
                        color: mainColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 20),
                  Text(
                    text,
                    style:
                        TextStyle(fontSize: 15.w, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
        child: LongTile(title: title));
  }
}
