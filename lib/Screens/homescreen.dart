import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:remo_learn/utils/categories.dart';
import 'package:remo_learn/utils/colors.dart';
import 'package:remo_learn/utils/scrolling2.dart';
import 'package:remo_learn/utils/search.dart';
import 'package:remo_learn/utils/topcard.dart';
import 'package:remo_learn/utils/trending.dart';
import 'package:remo_learn/utils/upcomingcard_1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading= false;
  final databaseRef =FirebaseDatabase.instance.ref('home');

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:MyColors.Background,
        body:
        Column(
      children: [
        TopCard(),
        Expanded(child:
        ListView(
          children: [
            Scrollingsecond(),
            SizedBox(height: 20.0,),
            SearchBarr(),
            SizedBox(height: 20.0,),
            CategoriesSection(),
            Divider(),
            SizedBox(height: 20.0,),
            UpcomingCard1(),
            SizedBox(height: 30.0,),
            TrendingCards()



          ],

        )

        )



      ],
    )


    );
  }
}
