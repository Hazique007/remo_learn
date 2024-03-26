import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:ionicons/ionicons.dart';
import 'package:remo_learn/utils/colors.dart';

class UpcomingDetails2 extends StatelessWidget {
  const UpcomingDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 110.0,top: 10.0),
              child: Text(
                'Upcoming',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 18.0,color:MyColors.Background),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150.0),
              child: Text(
                'challenge',
                style: GoogleFonts.montserrat(fontSize: 12.0,color: MyColors.Background),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 155.0),
              child: Text(
                'UI design',
                style: GoogleFonts.montserrat(fontSize: 12.0,color:MyColors.Background),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 165.0),
              child: Text(
                '27 Jan 2024',
                style: GoogleFonts.montserrat(fontSize: 8.0,color: MyColors.Background),
              ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),

          child: Image(
              width: 80.0,

              image: AssetImage(
                'Assets/ui.jpg',
              )),
        ),


      ],
    );
  }
}


