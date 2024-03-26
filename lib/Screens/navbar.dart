import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:remo_learn/Screens/community.dart';
import 'package:remo_learn/Screens/homescreen.dart';
import 'package:remo_learn/Screens/mycourse.dart';
import 'package:remo_learn/Screens/profile.dart';
import 'package:remo_learn/utils/colors.dart';

class NavvBaar extends StatefulWidget {
  NavvBaar({super.key});

  @override
  State<NavvBaar> createState() => _NavvBaarState();
}

class _NavvBaarState extends State<NavvBaar> {
  // PageController _pageController=PageController();
  int _selectedindex = 0;
  final screens = [

    HomeScreen(),
    MyCourses(),
    CommunitySection(),
    ProfilePage(),





  ];

  // void _onPageChanged(int index) {
  //   setState(() {
  //     _selectedindex = index;
  //   });
  // }
  //
  // void _onItemTapped(int i){
  //   _pageController.jumpToPage(i);
  // }

  @override
  Widget build(context) {
    return Scaffold(
      body:screens[_selectedindex],

      bottomNavigationBar:
      Container
      // (padding: EdgeInsets.only(right: 10.0,left: 10.0),
      // child: ClipRRect( borderRadius: BorderRadius.all(Radius.circular(200.0)),
      //   child: Container(
        (padding: EdgeInsets.only(),

        child: BottomNavigationBar (
            selectedItemColor: MyColors.Primary,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            elevation: 3.0,

            type: BottomNavigationBarType.fixed,
            backgroundColor: MyColors.Background,

            // selectedIconTheme: Color,




            items:[

              BottomNavigationBarItem(
                icon:Icon(Ionicons.home,color: MyColors.Primary,size: 25.0,),


                // activeIcon: const Color(0xff232323),
                label: "Home" ,



              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.book,color: MyColors.Primary,size: 25.0,),

                label: "Courses",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.people,color: MyColors.Primary,size: 25.0,),
                label: "Community",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.person,color: MyColors.Primary,size: 25.0,),
                label: "Profile",
              ),
            ],

            currentIndex: _selectedindex,
            onTap:(value){
              setState(() {
                _selectedindex=value;
              });
            }
        ),
      ),


    );
  }
}
