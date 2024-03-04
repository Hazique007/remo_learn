import 'package:flutter/material.dart';
import 'package:i_am_rich/colors.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 396,
      width: 500,
      decoration: BoxDecoration(
          color: MyColours.green,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      image: DecorationImage(image: AssetImage('Assets/comm.png',), scale: 2.5),
      ),
    );
  }
}
