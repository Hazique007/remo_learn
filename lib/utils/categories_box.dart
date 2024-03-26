import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class CatBox extends StatelessWidget {
  CatBox(this.MyText, {super.key});

  Text MyText;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: MyColors.Primary,
          borderRadius: BorderRadius.circular(10.0),border: Border.all(color: MyColors.Font),
          //       boxShadow: [
          //   BoxShadow(
          //   color: Colors.grey.withOpacity(0.3),
          //   spreadRadius: 1,
          //   blurRadius: 1,
          //   offset: Offset(5, 1),
          // )]

        ),
        child: Center(
          child: MyText,
        ));
  }
}
