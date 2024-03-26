import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remo_learn/utils/colors.dart';
import 'package:remo_learn/utils/toast.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailcontroller = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.Primary,
        title: Text(
          'Forgot Password',
          style: GoogleFonts.montserrat(color: MyColors.Background),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                auth.sendPasswordResetEmail(
                    email: _emailcontroller.text.toString()).then((value) {
                      Utils().toastMessage('Check your mail ');



                }).onError((error, stackTrace) {
                  Utils().toastMessage(error.toString());
                });
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: MyColors.Primary,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                    child: Text(
                  'Forgot',
                  style: GoogleFonts.montserrat(color: MyColors.Background),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
