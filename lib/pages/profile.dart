import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:socialapp/pages/routes.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  
   late PickedFile _file;
  final ImagePicker _picker=ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(" My Profile ",style: TextStyle(color: Colors.black,fontFamily: "Inter",fontSize: 20),),
        actions: [
          Container(
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

              icon: Icon(Icons.settings,
                color: Color(0xff0094FF),
                size: 17,),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.Home);

              },
            ),
          ),


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
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 30),
        child: Column(

          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    // backgroundImage: _file==null?AssetImage("images/rocky.jpg"):PickedFile(File(_file.path)),
                    radius: 100,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 15,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: IconButton(


                          onPressed: (){
                            showModalBottomSheet(
                                context: context,
                                builder: ((builder)=> bottomSheet()),
                            );

                          },
                          icon: Icon(Icons.camera_alt,
                            color: Colors.white,)
                      ),
                    ),
                  )
                ],
              )
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.grey.shade600,),
              title: Text("Bilal Khan",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 20,
                color: Colors.grey.shade600
              ),),
              trailing: Icon(Icons.edit,
              color: Colors.grey.shade600,
              ),
            ),
            SizedBox(height: 15,),ListTile(
              leading: Icon(Icons.info_outline_rounded,color: Colors.grey.shade600,),
              title: Text("User Dead",            style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 20,
                  color: Colors.grey.shade600
              ),),
              trailing: Icon(Icons.edit,
              color: Colors.grey.shade600,
              ),
            ),
            SizedBox(height: 15,),ListTile(
              leading: Icon(Icons.call,color: Colors.grey.shade600,),
              title: Text("+923110302067",            style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                  color: Colors.grey.shade600
              ),),

              ),

          ],
        ),
      ),
    );
  }

  bottomSheet(){
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
          Text("Chosse a Profile Picture",
            style: TextStyle(
                fontSize: 20
            ),),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: (){
                    takePhoto(ImageSource.camera);
                  },
                  icon: Icon(Icons.camera),
                  label:Text("Camera")),
              SizedBox(width: 10,),
              ElevatedButton.icon(
                  onPressed: (){
                    takePhoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.image),
                  label: Text("Gallery"))
            ],
          ),
        ],
      ),
    );
  }
  Future<void> takePhoto(ImageSource source) async {
    final PickedFile = await _picker.getImage(source: source);
    setState(() {
      _file=PickedFile!;
    });
  }
}
