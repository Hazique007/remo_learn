import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:ionicons/ionicons.dart';
import 'package:remo_learn/utils/colors.dart';

import 'categories_box.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: MyColors.Font),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 145.0),
                  child: Text('See more',style: GoogleFonts.montserrat(fontSize: 10.0,color: Colors.grey),),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),



            child: Container(
              width: 500,
              height: 50,
              child: ListView(

                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CatBox(Text('App development',style: GoogleFonts.poppins(color: Colors.white,fontSize: 12.0),)),
                    SizedBox(width: 10.0,),
                    CatBox(Text('Business',style: GoogleFonts.poppins(color: Colors.white,fontSize: 12.0),)),
                    SizedBox(width: 10.0,),
                    CatBox(Text('Web Development',style: GoogleFonts.poppins(color: Colors.white,fontSize: 12.0),)),
                    SizedBox(width: 10.0,),
                    CatBox(Text('Crypto Currency',style: GoogleFonts.poppins(color: Colors.white,fontSize: 12.0),)),
                    SizedBox(width: 10.0,),
                    CatBox(Text('UI/UX Design',style: GoogleFonts.poppins(color: Colors.white,fontSize: 12.0),)),
                    SizedBox(width: 10.0,),
                    CatBox(Text('MS Excel',style: GoogleFonts.poppins(color: Colors.white,fontSize: 12.0),)),
                    SizedBox(width: 10.0,),
                    CatBox(Text('AI/ML',style: GoogleFonts.poppins(color: Colors.white,fontSize: 12.0),)),
                    SizedBox(width: 10.0,),






                  ]
              ),
            ),
          ),


        ],
      ),
    );
  }
}
