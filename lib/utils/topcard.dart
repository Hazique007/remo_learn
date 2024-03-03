import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';


import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:remo_learn/colors.dart';

class TopCard extends StatefulWidget {
  const TopCard({super.key});

  @override
  State<TopCard> createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Container(

        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            color: MyColors.Secondary,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0),),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ]

        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 20.0),
                child: RichText(text: TextSpan(
                    text: 'Hey there!\n',style: GoogleFonts.montserrat(fontSize: 25,color: MyColors.Font),
                    children: [
                      TextSpan(
                        text: 'Champ',style: GoogleFonts.montserrat(fontSize: 30,color: MyColors.Font,fontWeight: FontWeight.bold),
                      )
                    ]
                ))
            ),
            SizedBox(width: 40.0,),

            Column(

              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 50.0,),
                  child: Text('Web Dev Challenge',style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w800,color: MyColors.Font),),

                ),

                Padding(
                  padding: const EdgeInsets.only(right: 75.0,top: 2.0),
                  child: Text('2 hrs left ',style: GoogleFonts.poppins(fontSize: 8,fontWeight: FontWeight.w400,color: MyColors.Font),

                  ),


                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: LinearPercentIndicator(
                    lineHeight: 18.0,
                    // barRadius: Radius.circular(10.0),
                    animation: true,
                    animationDuration: 2500,
                    center: Text('50%',style: GoogleFonts.montserrat(fontSize: 10.0,color: MyColors.Background,fontWeight: FontWeight.bold),),
                    barRadius: Radius.circular(10.0),
                    width: 140.0,
                    percent: 0.5,
                    progressColor: MyColors.Primary,
                    backgroundColor: MyColors.Secondary,

                  ),
                )


              ],
            ),



          ],
        ),
      ),
    );

  }
}
