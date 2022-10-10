import 'package:flutter/material.dart';
import 'package:kerala_tourism/Updates/update_user_profile.dart';

class UserProfile extends StatelessWidget {
  Widget text({required String text}){
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white30,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(text,
          style: TextStyle(
            fontSize: 16,
            letterSpacing: 2,
            color: Colors.black,
            fontWeight: FontWeight.bold
            ),),
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
                             image: AssetImage('assets/images/IMG-20200204-WA0088.jpg'),
                             fit: BoxFit.cover,
                             width: 132,
                             height: 132,
                             child: InkWell(
                               onTap: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdateUserProfile()));
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
                                 Icons.edit
                                 ,
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
                    SingleChildScrollView(
                      child: Container(
                                height: 400,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    text(
                                      text: 'Shahla Beegum',
                                    ),
                                    text(
                                      text: 'shahlanishu@gmail.com',
                                    ),
                                    text(
                                      text: '8138978469',
                                    ),
                                  ],
                                ),
                              ),
                    ),
            ],
          ),
        ],
      ),
    );
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