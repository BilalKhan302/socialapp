import 'package:flutter/material.dart';
import 'package:socialapp/pages/onboarding1.dart';
import 'package:socialapp/pages/routes.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetointro();

  }
  _navigatetointro() async{
  await Future.delayed(Duration(seconds: 2));
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Intro1()));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff2FEbD4),
                  Color(0xff00D0EC),
                  Color(0xff0094FF),
                  Color(0xff5796F4),
                ]),
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset("images/img.png")),
              SizedBox(
                height: 20,
              ),

              Text("Social App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w600,
                fontFamily: "Inter"
              ),)
            ],
          ),

      ),
    );
  }
}
