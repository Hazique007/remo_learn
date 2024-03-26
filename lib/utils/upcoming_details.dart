import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:ionicons/ionicons.dart';

class UpcomingDetails extends StatelessWidget {
  const UpcomingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 70.0,top: 10.0),
              child: Text(
                'Upcoming',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140.0),
              child: Text(
                'class',
                style: GoogleFonts.montserrat(fontSize: 12.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 90.0),
              child: Text(
                'Android Dev',
                style: GoogleFonts.montserrat(fontSize: 12.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 134.0),
              child: Text(
                '12:00pm',
                style: GoogleFonts.montserrat(fontSize: 8.0),
              ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
              width: 120.0,
              image: AssetImage(
                'Assets/an.jpg',
              )),
        )
      ],
    );
  }
}
