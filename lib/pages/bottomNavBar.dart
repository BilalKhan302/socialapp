import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/pages/homepage.dart';
import 'package:socialapp/pages/profile.dart';
import 'package:socialapp/pages/saved.dart';
import 'package:socialapp/pages/search.dart';




class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
    int _selectedindex=0;
  void _OnTapped(int index) {
    setState(() {
      _selectedindex=index;
    });

  }
  final List<Widget> _children=[
    Home(),
    Search(),
    Saved(),
    Profile(),



  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedindex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.shade100,
          fixedColor: Colors.grey,
          elevation: 50,
          onTap: _OnTapped,
          currentIndex: _selectedindex,


          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.dynamic_feed_rounded,color:_selectedindex==0? Colors.blue:Colors.grey.shade600,),
              label: "Feed",

            ),  BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded,color: Colors.grey.shade600,),
              label: "Search",

            ),  BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border,color: Colors.grey.shade600,),
              label: "Saved",

            ),  BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,
                color: Colors.grey.shade600,),
              label: "Profile",
            )
          ]
          ,),
      ),

    );
  }
}


