import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remo_learn/utils/colors.dart';


class Congo extends StatelessWidget {
  const Congo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
          height: 74,

          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: MyColors.Primary,
                blurRadius: 10,
                offset: Offset(3, 5), // Shadow position
              ),
            ],

            color: MyColors.Font,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Congratulate',style: GoogleFonts.montserrat(fontSize: 12.0,color: MyColors.Background, fontWeight: FontWeight.bold),
                  ),
                  Text('your Friend Jane from Android Dev class',style: GoogleFonts.montserrat(fontSize: 12.0,color: MyColors.Background, fontWeight: FontWeight.bold),
                  ),
                  Text('for joining Google',style: GoogleFonts.montserrat(fontSize: 12.0,color: MyColors.Background, fontWeight: FontWeight.bold),
                  ),


                ],
              ),
            ),
          )),
    );
  }
}
