import 'package:flutter/material.dart';
import 'package:socialapp/pages/routes.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Search",style: TextStyle(
          color: Colors.black,fontFamily: "Inter",fontSize: 20
        ),),
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
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Search for new \nPeople",
            style: TextStyle(
              fontSize: 25,
              fontFamily: "Inter"
            ),),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search_rounded,color: Colors.grey.shade600,),
                border: OutlineInputBorder(

                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey.shade600)
              ),


            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/img_1.png"),

              ),
              title: Text("Malik Ahzaz"),
              trailing: Icon(Icons.cancel_outlined,color: Colors.grey.shade600,),
            ),  SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/danish.jpg"),

              ),
              title: Text("Danish Ali"),
              trailing: Icon(Icons.cancel_outlined,color: Colors.grey.shade600,),
            ),  SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/uzair.jpg"),

              ),
              title: Text("Uzair khan"),
              trailing: Icon(Icons.cancel_outlined,color: Colors.grey.shade600,),
            ),  SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/rocky.jpg"),

              ),
              title: Text("Bilal Khan"),
              trailing: Icon(Icons.cancel_outlined,color: Colors.grey.shade600,),
            ),
          ],
        ),
      ),
    );
  }
}
