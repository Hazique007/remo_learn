import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:ionicons/ionicons.dart';
import 'package:remo_learn/utils/colors.dart';

import '../utils/course_card.dart';
import '../utils/course_card2.dart';
import '../utils/recommemded.dart';


class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 130.0, top: 10.0),
                child: Text(
                  'My Courses-',
                  style: GoogleFonts.poppins(
                      fontSize: 25.0, fontWeight: FontWeight.bold,color: MyColors.Font),
                ),
              ),
              CourseCard(),
              SizedBox(height: 10.0,),
              CourseCard2(),
              SizedBox(height: 20.0,),
              Divider(),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    RecommnededSection(),
                  ],
                ),
              ),

            ],
          ),

        ));
  }
}
