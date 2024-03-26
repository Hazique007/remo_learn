import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import 'colors.dart';

class ProfileData extends StatelessWidget {
  const ProfileData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Background,
      appBar: AppBar(
        backgroundColor: MyColors.Background,
        elevation: 0.0,

        title:  Text(
          'Profile',
          style: GoogleFonts.montserrat(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: MyColors.Font),
        ),
        centerTitle: true,

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
              SizedBox(
                width: 100,

                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: GoogleFonts.poppins(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor:MyColors.Primary,),
                ),
              ),
              SizedBox(height: 30.0,),

            ],
          ),
        ),
      ),
    );;
  }
}
