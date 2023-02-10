import 'package:flutter/material.dart';
import 'package:socialapp/pages/routes.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _register();
}

class _register extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text("Welcome to Social App",
              style: TextStyle(
                fontFamily: "Inter",
                color: Colors.black,
                fontSize: 40,



              ),),
            SizedBox(height: 15,),
            Text("You can start using the application after signing up in the app.It will take a while.",textAlign: TextAlign.start,),
            SizedBox(
              height: 10,
            ),
            const Text("If you have already an account just login.",textAlign: TextAlign.start,),
            SizedBox(
              height: 30,
            ),
            Center(child: Image.asset("images/undraw_music_re_a2jk 1.png")),

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
                Navigator.pushNamed(context, MyRoutes.Signup);

              },

                child: Text("Sign Up",
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
                  Navigator.pushNamed(context,MyRoutes.Login);

                },

                child: Text("Login",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 15,
                  ),),
              ),
            ),
            SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
