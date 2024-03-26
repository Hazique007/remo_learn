import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remo_learn/utils/colors.dart';
import 'package:remo_learn/utils/recommended_details.dart';
import 'package:remo_learn/utils/recommended_details2.dart';
import 'package:remo_learn/utils/recommended_details3.dart';

class RecommnededSection extends StatelessWidget {
  const RecommnededSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 140.0),
          child: Text('Recommended',
              style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: MyColors.Font)),
        ),
        SizedBox(height: 20.0,),
        RecommendedDetails1(),
        SizedBox(height: 10.0,),
        RecommendedDetails2(),
        SizedBox(height: 10.0,),
        RecommendedDetails3(),
      ],
    );
  }
}
