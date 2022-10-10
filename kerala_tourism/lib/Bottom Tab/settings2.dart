import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../google_sign_in.dart';

class Settings2 extends StatefulWidget {
  Settings2({Key? key}) : super(key: key);

  @override
  _Settings2State createState() => _Settings2State();
}

class _Settings2State extends State<Settings2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon: Icon(Icons.arrow_back,
          color: Colors.green,)
          ),
          ),
          body: Container(
            padding: EdgeInsets.only(left: 16, top: 25, right: 16),
            child: ListView(
              children: [
                const Text('Settings',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(height: 40,),
                Row(
                  children:const [
                    Icon(Icons.person, color: Colors.green,),
                    SizedBox(width: 8,),
                    Text('Account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                      ),                     
                  ],
                ),
                Divider(height: 15,thickness: 2,),
                SizedBox(height: 10,),
                buildAccountOptionRow(context, "Change password"),
                buildAccountOptionRow(context, 'Content settings'),
                buildAccountOptionRow(context, 'Social'),
                buildAccountOptionRow(context, 'Language'),
                buildAccountOptionRow(context, 'Privacy and security'),
                SizedBox(height: 40,),
                Row(
                  children:const [
                    Icon(Icons.volume_up_outlined, color: Colors.green,),
                    SizedBox(width: 8,),
                    Text('Notifications',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                      ),                     
                  ],
                ),
                Divider(height: 15,thickness: 2,),
                SizedBox(height: 10,),
                buildNotificationOptionRow('New for you', true),
                buildNotificationOptionRow('Account activity', true),
                buildNotificationOptionRow('Opportunity', false),
                SizedBox(height: 80,),

                Center(
                  child: OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                
                    onPressed: (){
                  //     final provider =
                  // Provider.of<GoogleSignInProvider>(context, listen: false);
                  // provider.logout();
                  Navigator.popAndPushNamed(context, '/login');
                      // Navigator.popUntil(context, (route) => route.isFirst);
                      // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
                      // Navigator.popAndPushNamed(context, 'LoginScreen()');
                    },
                    child: Text('SIGN OUT',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      letterSpacing: 2.2),),
                  ),
                ),
                // SizedBox(height: 50,)
              ],),
          ),

    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]
                  ),
                  ),
                  Transform.scale(
                    scale:0.7,
                    child: CupertinoSwitch(
                      value: isActive, 
                      onChanged: (bool val){}),
                  )

                ],
              );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
                onTap: ()=> showDialog(context: context, 
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text(title),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Option 1'),
                        SizedBox(height:10),
                        Text('Option 2'),
                        SizedBox(height:10),
                        Text('Option 3'),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),)
                    ],
                  );
                }),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                        fontSize: 18),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                    ],
                  ),
                ),
              );
  }
}