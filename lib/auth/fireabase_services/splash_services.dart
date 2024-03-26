import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'package:flutter/cupertino.dart';
import 'package:remo_learn/Screens/homescreen.dart';
import 'package:remo_learn/Screens/navbar.dart';
import 'package:remo_learn/auth/login.dart';
import 'package:remo_learn/auth/signup.dart';


class SplashServices{




  void isLogin(BuildContext context){
    final auth =FirebaseAuth.instance;

    final user = auth.currentUser;
     if(user!=null){
       Timer(Duration(seconds: 2), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> NavvBaar())));
     }
     else{
       Timer(Duration(seconds: 2), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage())));
     }




  }

}