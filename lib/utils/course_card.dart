import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'colors.dart';


class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0,left: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image


              (width: 200,

                image: AssetImage('Assets/myc1.jpg')),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 1.0),
              child: Text('Flutter 2021',style: GoogleFonts.montserrat(fontSize: 15.0,fontWeight: FontWeight.w600),),


            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Text('A detailed',style: GoogleFonts.montserrat(fontSize: 10.0,color: Colors.grey
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text('course on Flutter...',style:GoogleFonts.montserrat(fontSize: 10.0,color: Colors.grey
                    ) ,),
                  ),
                ],
              ),
            ),


            LinearPercentIndicator(
              lineHeight: 18.0,
              // barRadius: Radius.circular(10.0),
              animation: true,
              animationDuration: 2500,
              center: Text('80%',style: GoogleFonts.poppins(fontSize: 10.0,color: Colors.white,fontWeight: FontWeight.bold),),
              barRadius: Radius.circular(10.0),
              width: 120.0,
              percent: 0.8,
              progressColor: MyColors.Primary,
              backgroundColor: MyColors.Secondary,

            ),
          ],
        ),

      ],
    );
  }
}
