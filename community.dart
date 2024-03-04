import 'package:flutter/material.dart';
import 'package:i_am_rich/utils/congo.dart';
import 'package:i_am_rich/utils/post.dart';
import 'package:i_am_rich/utils/topcard.dart';

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
