import 'package:flutter/material.dart';
import 'package:socialapp/pages/routes.dart';

class Intro2 extends StatefulWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
        child: Column(
          children: [
            Center(child: Text("Almost there!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,


              ),)),
            SizedBox(height: 30,),
            Image.asset("images/Listening happy music-bro 1.png"),
            SizedBox(height: 30,),
            Text("Enjoy the latest music using music feature of our social app.",textAlign: TextAlign.center,
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
                Navigator.pushNamed(context, MyRoutes.Intro3);

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
                  Navigator.pushNamed(context, MyRoutes.Intro3);
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
