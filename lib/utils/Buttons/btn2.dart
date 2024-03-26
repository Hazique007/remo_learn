import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remo_learn/utils/colors.dart';


class MyButtons2 extends StatelessWidget {
  MyButtons2( this.color,this.title2,this.ontap,{super.key});

  String title2;
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
            color:color,
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Center(child: Text(title2,style: GoogleFonts.montserrat(fontSize: 10.0, color: MyColors.Background, fontWeight: FontWeight.bold),)),
      ),
    ) ;
  }
}
