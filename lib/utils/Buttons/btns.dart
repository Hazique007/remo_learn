import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remo_learn/utils/colors.dart';


class MyButtons extends StatelessWidget {
  MyButtons(this.color, this.title1, this.ontap, {super.key});

  String title1;
  Color color;
  VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 35.0,
        width: 115.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
            child: Text(
              title1,
              style: GoogleFonts.montserrat(fontSize: 10.0, color: MyColors.Font, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
