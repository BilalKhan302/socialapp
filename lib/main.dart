import 'package:flutter/material.dart';
import 'package:socialapp/pages/Login.dart';
import 'package:socialapp/pages/Signup.dart';
import 'package:socialapp/pages/bottomNavBar.dart';

import 'package:socialapp/pages/homepage.dart';
import 'package:socialapp/pages/onboarding1.dart';
import 'package:socialapp/pages/onboarding2.dart';
import 'package:socialapp/pages/onboarding3.dart';
import 'package:socialapp/pages/registerscreen.dart';
import 'package:socialapp/pages/routes.dart';
import 'package:socialapp/pages/search.dart';
import 'package:socialapp/pages/splash.dart';
import 'package:sizer/sizer.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,


        initialRoute: "/splash",
        routes: {
          MyRoutes.SplashScreen:(context)=>SplashScreen(),
          MyRoutes.Intro1:(context)=> Intro1(),
          MyRoutes.Intro2:(context)=>Intro2(),
          MyRoutes.Intro3:(context)=>Intro3(),
          MyRoutes.register:(context)=>register(),
          MyRoutes.Signup:(context)=>Signup(),
          MyRoutes.Login:(context)=>Login(),
          MyRoutes.Home:(context)=>BottomNavbar(),
          MyRoutes.Search:(context)=>Search(),
        },

      );
    });

  }
}
