import 'package:flutter/material.dart';

class PhotoDetails extends StatelessWidget {

  final String imagePath;
  final String title;
  final String details;
  final int index;
  PhotoDetails({ required this.imagePath, required this.title, required this.details,required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Hero(
                tag: 'logo$index',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
              
                    )
                  ),
                  ),
              )
                ),
                Container(
                  height: 260,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title, 
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 22,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                            SizedBox(height: 15),
                            Text(details, 
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              // fontWeight: FontWeight.w600
                            ),
                            ),
                          ],
                        ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // FloatingActionButton.extended(
                            //   // color: Colors.white,
                            // //   shape: const StadiumBorder(),
                            // //  padding: const EdgeInsets.all(25),
                            // //  elevation: 7,
                            // //  minWidth: 150,
                            // //  height: 5,
                            //   onPressed: (){
                            //     Navigator.pop(context);
                            //   }, label: Text('Back',
                            //   style: TextStyle(
                            //     // color: Colors.green,
                            //     fontSize: 16,
                            //     fontWeight: FontWeight.bold
                            //   ),
                            //   ),
                            //   // backgroundColor: Colors.white,
                            //   // foregroundColor: Colors.green,
                            // )


                            OutlineButton(
                              highlightedBorderColor: Colors.green,
                              
                              highlightElevation: 7,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('Back',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      letterSpacing: 2.2),),
                  ),
                            
                            // Expanded(
                            //   child: FlatButton(
                            //     onPressed: (){},
                            //     padding: EdgeInsets.symmetric(vertical: 15),
                            //     color: Colors.lightBlueAccent,
                            //     child: Text('Back',
                            //     style: TextStyle(
                            //       color: Colors.white,

                            //     ),),
                            //   ))
                             
                              ],
                        )
                    ],
                  ),
                )
          ],
        ),
        ),
    );
  }
}