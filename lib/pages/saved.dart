import 'package:flutter/material.dart';
import 'package:socialapp/pages/routes.dart';
class Saved extends StatelessWidget {
   Saved({Key? key}) : super(key: key);

  @override
   List<String>  _img=[
     "images/2.jpg",

    "images/download.jpg",
    "images/download.jpg",
    "images/2.jpg"


  ];


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Saved ",style: TextStyle(color: Colors.black,fontFamily: "Inter",fontSize: 20),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/rocky.jpg"),
            ),
          )


        ],

        backgroundColor: Colors.white,
        elevation: 0.0,


        leading: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(0, 0),
                  color: Colors.black.withOpacity(0.1),
                )
              ]
          ),
          child: IconButton(

            icon: Icon(Icons.arrow_back_ios_outlined,
              color: Color(0xff0094FF),
              size: 17,),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.Home);

            },
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" Your Saved \n Post's",style: TextStyle(
              fontFamily: "Inter",
              fontSize: 20,
              color: Colors.grey.shade600
            ),),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(crossAxisCount: 2,
              children:
                List.generate(_img.length, (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(_img[index]),
                  ),
                )),


              ),
            )

          ],
        ),
      ),
    );
  }
}
