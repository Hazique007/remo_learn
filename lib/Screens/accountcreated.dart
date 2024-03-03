import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_am_rich/colors.dart';

class AccountCreated extends StatelessWidget {
  const AccountCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
            width: 150,
            height: 200,
            image: AssetImage(
              'Assets/created.png',
            )),
        Text(
          'Account Created!',
          style: GoogleFonts.montserrat(
              fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          'Your account has been\n created successfully',
          style: GoogleFonts.montserrat(fontSize: 15.0),
        ),
        const SizedBox(height: 50.0),
        SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Back to Login',
                style: GoogleFonts.montserrat(color: MyColours.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: MyColours.black),
            ))
      ],
    )));
  }
}
