import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remo_learn/utils/colors.dart';


class RecommendedDetails1 extends StatelessWidget {
  const RecommendedDetails1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(

        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
                width: 180.0,
                image: AssetImage('Assets/mv.jpg')),
          ),
          SizedBox(width: 8.0,),

          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('100 Days\nWeb Dev',style: GoogleFonts.montserrat(fontSize: 12.0,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(left: 53.0),
                      child: Text('\$9',style: GoogleFonts.montserrat(fontSize: 15.0,fontWeight: FontWeight.w600,color: MyColors.Font),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Row(

                    children: [
                      Icon(Icons.star,size: 15,),
                      Text('4.5'),

                    ],
                  ),
                )
              ],
            ),

          )
        ],
      ),

    );

  }
}

