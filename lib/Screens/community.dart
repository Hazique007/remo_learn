import 'package:flutter/material.dart';

import '../utils/comm_topcard.dart';
import '../utils/congo.dart';
import '../utils/post.dart';


class CommunitySection extends StatelessWidget {
  const CommunitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          TopCard(),
          SizedBox(
            height: 30.0,
          ),
          Congo(),
          SizedBox(
            height: 30.0,
          ),
          Post(),



        ],

      ),
    );
  }
}
