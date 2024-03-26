import 'dart:async';

import 'package:flutter/material.dart';
import 'package:remo_learn/auth/fireabase_services/splash_services.dart';
import 'package:remo_learn/utils/colors.dart';

import '../auth/fireabase_services/splash_services.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    splashServices.isLogin(context);


    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.Background,
      body: Center(child: Image.asset('Assets/remo.png',width: 300,)),
    );
  }
}
