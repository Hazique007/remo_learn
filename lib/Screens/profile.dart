

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ionicons/ionicons.dart';
import 'package:remo_learn/Screens/mentee.dart';
import 'package:remo_learn/auth/login.dart';
import 'package:remo_learn/utils/colors.dart';
import 'package:remo_learn/utils/toast.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Background,
      appBar: AppBar(
        backgroundColor: MyColors.Background,
        elevation: 0.0,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: MyColors.Font),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                auth.signOut().then((value) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }).onError((error, stackTrace) {
                  Utils().toastMessage(error.toString());
                });


              },
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
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.Primary,
                    side: BorderSide.none,
                    shape: StadiumBorder()),
              ),
              SizedBox(
                height: 30.0,
              ),
              Divider(),
              Container(
                  height: 340,
                  width: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                      color: MyColors.Secondary),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0, top: 30.0),
                    child: Column(
                      children: [
                        Text(
                          'Congratulations!🎉\nYou can be a Mentor now ',
                          style: GoogleFonts.montserrat(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: MyColors.Font),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 140.0),
                          child: Text(
                            'Completed 8/10 course',
                            style: GoogleFonts.montserrat(
                                color: Color(
                                  0xfff232323,
                                ),
                                fontSize: 10.0),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  ClipRRect(
                                    child: Image.asset(
                                      'Assets/bemen.png',
                                      width: 120.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Be a',
                                        style: GoogleFonts.montserrat(),
                                      ),
                                      InkWell(
                                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (Context)=>MenteeDetails())),
                                          child: Text(
                                        ' Mentor',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold),
                                      ))
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Column(
                                children: [
                                  ClipRRect(
                                    child: Image.asset(
                                      'Assets/bement.png',
                                      width: 120.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Be a',
                                        style: GoogleFonts.montserrat(),
                                      ),
                                      InkWell(

                                          child: Text(
                                        ' Mentee',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold),
                                      ))
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
