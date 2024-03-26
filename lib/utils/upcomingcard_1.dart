import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ionicons/ionicons.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:remo_learn/utils/colors.dart';
import 'package:remo_learn/utils/upcoming_details.dart';
import 'package:remo_learn/utils/upcoming_details2.dart';


class UpcomingCard1 extends StatelessWidget {
  const UpcomingCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Container(
          height: 100,

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 322,
                height: 100,
                decoration: BoxDecoration(color: MyColors.Secondary,borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child:UpcomingDetails(),



                ),
              ),
              SizedBox(width: 30.0,),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  width: 322,
                  height: 100,
                  decoration: BoxDecoration(color: MyColors.Primary,borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child:UpcomingDetails2(),



                  ),
                ),
              ),
            ],
          ),
        ),


      );
  }
}
