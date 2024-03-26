import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remo_learn/utils/colors.dart';


class SearchBarr extends StatelessWidget {
  const SearchBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:20.0,left: 20.0),
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(color: MyColors.Secondary),

          borderRadius: BorderRadius.circular(10.0)

        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Icon(Icons.search,size: 25.0,),
              SizedBox(width: 10.0,),
              Text('Search',style: GoogleFonts.montserrat(fontSize: 12.0,color: MyColors.Font),)
            ],
          ),
        ),
      ),
    );
  }
}
