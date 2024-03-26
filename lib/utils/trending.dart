import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:ionicons/ionicons.dart';
import 'package:remo_learn/utils/colors.dart';
import 'package:remo_learn/utils/trending_detail2.dart';
import 'package:remo_learn/utils/trending_detail3.dart';
import 'package:remo_learn/utils/trending_details.dart';


class TrendingCards extends StatelessWidget {
  const TrendingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Row(

        children: [

          Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(right: 160.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Row(
                    children: [
                      Text('Trending',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold,color: MyColors.Font),),
                      Icon(Icons.local_fire_department_outlined,size: 20.0,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0,),

              Column(
                children: [

                  TrendingDetail(),

                  SizedBox(height: 10.0,),

                  TrendingSecond(),


                  SizedBox(height: 10.0,),

                  TrendingDetailThird(),


                  SizedBox(height: 10.0,),
                ],
              ),

            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 320.0,),
          //   child: Icon(Ionicons.arrow_forward,size: 20.0,color: Mycolors.myblack,)
          // ),


        ],

      );
  }
}
