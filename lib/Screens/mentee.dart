import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:ionicons/ionicons.dart';
import 'package:remo_learn/utils/colors.dart';
import 'package:remo_learn/utils/mentee_detail1.dart';
import 'package:remo_learn/utils/mentee_details2.dart';


class MenteeDetails extends StatelessWidget {
  const MenteeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,

        title: Center(
          child: Text(
            'Profile',
            style: GoogleFonts.poppins(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: MyColors.Font),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.exit_outline,
                color: MyColors.Primary,
              ))
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(image: AssetImage('Assets/me.jpg')),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Hazique Khan',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              Text(
                'khanhazique04@gmail.com',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 12.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Edit Profile',
                  style: GoogleFonts.poppins(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: MyColors.Primary,side: BorderSide.none,shape: StadiumBorder()),
              ),
              SizedBox(height: 30.0,),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(right: 60.0),
                child: Column(
                  children: [
                    Text('You can provide Mentorship\nin following fields-',style: GoogleFonts.montserrat(fontSize: 15.0,fontWeight: FontWeight.bold),),
                    SizedBox(height: 40.0,),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 85.0),
                    //   child: Text('Based on your Achievements',style: GoogleFonts.montserrat(fontSize: 10.0,color:MyColors.Font),),
                    // )
                    MenteeDetails1(),
                    SizedBox(height: 20.0,),
                    MenteeDetails2(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
