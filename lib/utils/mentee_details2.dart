import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenteeDetails2 extends StatelessWidget {
  const MenteeDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'Assets/p2.png',
                width: 150,
              )),
          SizedBox(width: 12.0,),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: [Text('Android Dev',style: GoogleFonts.montserrat(fontSize: 15.0,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Text('200+ Mentee',style: GoogleFonts.montserrat(fontSize: 10.0)),
                )


              ],
            ),
          )
        ],
      ),
    );
  }
}
