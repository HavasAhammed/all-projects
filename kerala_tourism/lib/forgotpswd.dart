import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kerala_tourism/login_screen.dart';

class ForgotPassword extends StatelessWidget {
 
 Color primaryColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                
                    alignment: Alignment.center,
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x665ac18e),
                          Color(0x995ac18e),
                          Color(0xcc5ac18e),
                          Color(0xff5ac18e),
                          ]
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Forgot Password?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 40),
        
                            //create password
                            
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)                          
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.lock,
                                  color: primaryColor,),
                                  border: InputBorder.none,
                                  hintText: 'Create password'),
                              ),
                            ),
                            SizedBox(height: 20,),
        
                            //confirm assword
        
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)                          
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.lock,
                                  color: primaryColor,),
                                  border: InputBorder.none,
                                  hintText: 'Confirm password'),
                              ),
                            ),
                            SizedBox(height: 20,),
        
                            //buttons
        
                              Row(
                                
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
        
                                  //cancel
        
                                  FloatingActionButton.extended(
                                    onPressed: (){
                                      Navigator.of(context).pop(MaterialPageRoute(
                                      builder: (context)=>LoginScreen()));
                                    }, 
                                  label: Text('Cancel',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  backgroundColor: Colors.white,
                                  foregroundColor: primaryColor,
                                  ),
        
                                  //save password
        
                                   FloatingActionButton.extended(
                                    onPressed: (){
                                      print('Password Changed');
                                    }, 
                                  label: Text('Save password',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  backgroundColor: Colors.white,
                                  foregroundColor: primaryColor,
                                  ),
        
        
                                ],
                              )
        
        
                          ]
                      )
              )
                    )
              )
            ],
            ),
        ),
      ),
    );
  }
}