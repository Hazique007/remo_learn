import 'package:flutter/material.dart';

import 'package:remo_learn/utils/colors.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 370,
        width: 500,
        decoration: BoxDecoration(
          color: MyColors.Secondary,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          image: DecorationImage(image: AssetImage('Assets/comm.jpg',), scale: 2.7),
        ),
      ),
    );
  }
}
