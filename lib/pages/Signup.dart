import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/pages/routes.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _signupkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Form(
          key: _signupkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),

              Text('Create Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Inter"
                ),),
              SizedBox(
                height: 20,
              ),
              Text("Hi there,You can start using this \napp after sign up.",),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(decoration: BoxDecoration(
                    
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(0,0),
                          color: Colors.black.withOpacity(0.3)
                      )
                    ],
                    borderRadius: BorderRadius.circular(50)
                  ),
                      child: Image.asset("images/Group 1.png")),

                  SizedBox(
                    width: 10,
                  ),

                  Container(decoration: BoxDecoration(

                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(0,0),
                            color: Colors.black.withOpacity(0.3)
                        )
                      ],
                      borderRadius: BorderRadius.circular(50)
                  ),
                      child: Image.asset("images/Group 2.png")),


                ],
              ),
              SizedBox(height: 20,),
              Center(child: Text("or,sign up with your gmail.",)),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Username",
                  suffixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white10)
                  )
                ),
              ),

              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter Email",
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white10)
                    )
                ),
              ),

              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Set Password",
                    suffixIcon: Icon(Icons.lock_outline_rounded),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                    )
                ),
              ),

              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Verify Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white10)
                    )
                ),
              ),
              SizedBox(height: 30,),
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
                  Navigator.pushNamed(context, MyRoutes.Home);


                },

                  child: Text("Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),

                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have a account."),
                  InkWell(
onTap: (){Navigator.pushNamed(context,MyRoutes.Login);},
                    child: Text("Login Now!",
                    style: TextStyle(color: Colors.blue,
                    fontWeight: FontWeight.w600),),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
