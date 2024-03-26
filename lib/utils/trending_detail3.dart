import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:ionicons/ionicons.dart';
import 'package:remo_learn/utils/colors.dart';

class TrendingDetailThird extends StatelessWidget {
  const TrendingDetailThird({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(

        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
                width: 180.0,
                image: AssetImage('Assets/tr3.jpg')),
          ),
          SizedBox(width: 8.0,),

          Padding(
            padding: const EdgeInsets.only(bottom: 30.0,),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Flutter\nApp Dev',style: GoogleFonts.poppins(fontSize: 12.0,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text('\$9',style: GoogleFonts.poppins(fontSize: 15.0,fontWeight: FontWeight.w600,color: MyColors.Primary),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Row(

                    children: [
                      Icon(Icons.star,size: 15,),
                      Text('4.3')
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

