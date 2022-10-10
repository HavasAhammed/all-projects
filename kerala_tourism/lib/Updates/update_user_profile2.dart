import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UpdateUserProfile2 extends StatefulWidget {
  @override
  State<UpdateUserProfile2> createState() => _UpdateUserProfile2State();
}

class _UpdateUserProfile2State extends State<UpdateUserProfile2> {
  final user = FirebaseAuth.instance.currentUser!;
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

   Widget textfield({required String hintText}){
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            letterSpacing: 2,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          fillColor: Colors.white30,
          border: OutlineInputBorder
          (
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none
            ) 
        ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff555555),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
           CustomPaint(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Profile',
                style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                   ),
                   ),
                   ),
                   SizedBox(height: 30,),
          
                   Stack(
                     children: [
                       CircleAvatar(
                         backgroundColor: Colors.white,
                         radius: 72,
                         child: ClipOval(
                         child: Material(
                           color: Colors.transparent,
                           child: Ink.image(
                             image: _imageFile == null
                             ? NetworkImage(user.photoURL!)
                             : FileImage(File(_imageFile!.path)) as ImageProvider,
                             fit: BoxFit.cover,
                             width: 132,
                             height: 132,
                             child: InkWell(
                               onTap: (){
                                showModalBottomSheet(context: context, builder: (builder) => bottomSheet(context));
                               },
                             ),),
                         ),
                                            ),
                       ),
                     Positioned(
                       bottom: 0,
                       right: 4,
                       child:  ClipOval(
                         child: Container(
                           padding: EdgeInsets.all(3),
                           color: Colors.white,
                           child: ClipOval(
                             child: Container(
                               padding: EdgeInsets.all(8),
                               color: Colors.black54,
                               child: Icon(
                                 Icons.add_a_photo,
                                 color: Colors.white,
                                 size: 20,
                               ),
                             ),
                           ),
                         ),
                       ),
                     )
                     ]
                   ),
                   const SizedBox(height: 40,),
                    Container(
                              height: 300,
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  textfield(
                                    hintText: user.displayName!,
                                  ),
                                  const SizedBox(height: 25,),
                                  textfield(
                                    hintText: user.email!,
                                  ),
                                  const SizedBox(height: 25,),
                                  textfield(
                                    hintText: '9567185559',
                                  ),
                                  const SizedBox(height: 25,),
                                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
          
                      FloatingActionButton.extended(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  }, 
                                label: Text('Cancel',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),),
                                backgroundColor: Colors.black54,
                                foregroundColor: Colors.white,
                                ),
                        FloatingActionButton.extended(
                                  onPressed: (){
                                    
                                  }, 
                                label: Text('Save',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),),
                                backgroundColor: Colors.black54,
                                foregroundColor: Colors.white,
                                ),
                    ],
                                    ),
                                  
                                ],
                              ),
                            ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomSheet(context){
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
          Text('Choose Profile Photo',
          style: TextStyle(
            fontSize: 20),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: (){
                    takePhoto(ImageSource.camera);
                  }, 
                icon: Icon(Icons.camera,color: Colors.green,), 
                label: Text('Camera',
                style: TextStyle(
                  color: Colors.green
                ),)
                ),
                TextButton.icon(
                  onPressed: (){
                    takePhoto(ImageSource.gallery);
                  }, 
                icon: Icon(Icons.image,color: Colors.green,), 
                label: Text('Gallery',
                style: TextStyle(color: Colors.green),)
                ),
              ],
            )
        ],
      ),
    );
  }
  void takePhoto(ImageSource source) async{
  final pickedFile = await _picker.getImage(
    source: source,
    
  );
  setState((){
    _imageFile = pickedFile!;
  });
  }
}
  class HeaderCurvedContainer extends CustomPainter {
    @override
    void paint(Canvas canvas,Size size){
      Paint paint = Paint()..color=Color(0xff555555);
      Path path=Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
      canvas.drawPath(path, paint);
    }
    @override
    bool shouldRepaint(CustomPainter oldDelegate)=>false;
  
}