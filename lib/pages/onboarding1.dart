import 'package:flutter/material.dart';
import 'package:socialapp/pages/routes.dart';
import 'package:lottie/lottie.dart';
class Intro1 extends StatefulWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
        child: Column(
          children: [
            Center(child: Text("Wait a moment!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Inter"
              ),)),
            SizedBox(height: 30,),
            Lottie.asset("assets/38435-register.json"),

            SizedBox(height: 20,),
            Text("Connect with other People around the world using our social app.",textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 15,
            ),),
            SizedBox(height: 50,),
            Container(
              height: 40,
              
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xff2FEbD4),
                      Color(0xff00D0EC),
                      Color(0xff0094FF),
                      Color(0xff5796F4),
                    ]),
              ),
              child: MaterialButton(onPressed: () {
Navigator.pushNamed(context, MyRoutes.Intro2);
              },

                child: Text("Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),),

              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(5),

            ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 2,color: Colors.blueAccent),
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.Intro2);
              },

                child: Text("Skip",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 15,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
