import 'package:flutter/material.dart';
import 'package:socialapp/pages/routes.dart';

class Intro3 extends StatefulWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
        child: Column(
          children: [
            Center(child: Text("Lets Go!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,


              ),)),
            SizedBox(height: 30,),
            Image.asset("images/Social life-bro 1.png"),
            SizedBox(height: 30,),
            Text("You can create and edit your Profile by signing up on our social app.",textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),),
            SizedBox(height: 100,),
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
                Navigator.pushNamed(context, MyRoutes.register);
              },

                child: Text("Get Started",
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
                  Navigator.pushNamed(context, MyRoutes.register);

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
