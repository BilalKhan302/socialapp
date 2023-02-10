import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/pages/routes.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Padding(
    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40,),
        Text("Hello there,",

        style: TextStyle(fontFamily: "Inter",
          fontSize: 30,
        ),
        ),
        SizedBox(height: 20,),
        Text("We are so happy you came back.",style: TextStyle(fontSize: 15),),
        SizedBox(height: 40,),
        Center(child: Text("Login to your account to meet \nnew people & and enjoy music.",
        style: TextStyle(fontSize: 15),)),
        SizedBox(height: 50,),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Username",
              suffixIcon: Icon(Icons.people_alt_outlined),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white10)
              )
          ),
        ),

        SizedBox(height: 30,),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Password",
              suffixIcon: Icon(Icons.lock_outline),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white10)
              )
          ),
        ),
        SizedBox(height: 30,),
        Align(alignment: Alignment.centerRight,
          child: Text("Forgot password?",
          style: TextStyle(color: Colors.redAccent),),
        ),
        SizedBox(height: 40,),
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


          },

            child: Text("Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),),

          ),
        ),
        SizedBox(height: 40,),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Don't have an account."),
            InkWell(onTap: (){
              Navigator.pushNamed(context, MyRoutes.Signup);
            },
                child: Text("Sign Up!",
                style: TextStyle(color: Colors.blue),),
              )
          ],),
        ),
      ],
    ),
  ),
    );
  }
}
