import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_am_rich/colors.dart';
import 'package:i_am_rich/mybtn.dart';
import 'package:i_am_rich/mybtn_2.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 235,
        decoration: const BoxDecoration(
          color: Color(0xfffA3D2CA),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 15.0),
                      child: Column(
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: 'Your\n',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 25.0, color: MyColours.black),
                                  children: [
                                    TextSpan(
                                        text: 'Community',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 40.0,
                                            color: MyColours.black,
                                            fontWeight: FontWeight.bold))
                                  ])),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          MyButtons(MyColours.white, '500+ Connections', () { }),
                          const SizedBox(width: 20.0,),
                          MyButtons2(MyColours.black, '70 Profile Views', () { })

                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 90.0,left: 25.0),
                child: IconButton(onPressed: (){}, icon:Icon(Icons.chat)),
              )
            ],


          ),

        ),
      );

  }
}
