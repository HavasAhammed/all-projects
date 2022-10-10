import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kerala_tourism/home_page.dart';
import 'package:kerala_tourism/home_screen2.dart';
import 'package:kerala_tourism/login_screen.dart';

class SignUp extends StatelessWidget {

  Color primaryColor = Colors.green;
  
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _mobileController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
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
                        Text('REGISTER',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 40),

                        //Name

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextFormField(
                            controller: _nameController,
                            validator: (value){
                               if(value!.isEmpty){
                                 return 'Name cannot be empty';
                               }else
                               return null;
                             },
                             decoration: InputDecoration(
                               icon: Icon(Icons.person,
                               color: primaryColor,
                             ),
                             border: InputBorder.none,
                             hintText: 'Name'
                          ),
                        )
                        ),
                        SizedBox(height: 20,),

                        //Email

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextFormField(
                            controller: _emailController,
                            validator: (value){
                               if(value!.isEmpty){
                                 return 'Email cannot be empty';
                               }else
                               return null;
                             },
                             decoration: InputDecoration(
                               icon: Icon(Icons.email,
                               color: primaryColor,
                             ),
                             border: InputBorder.none,
                             hintText: 'Email'
                          ),
                        )
                        ),
                        SizedBox(height: 20,),

                        //Password

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextFormField(
                            controller: _passwordController,
                            validator: (value){
                               if(value!.isEmpty){
                                 return 'Password cannot be empty';
                               }else
                               return null;
                             },
                             decoration: InputDecoration(
                               icon: Icon(Icons.lock,
                               color: primaryColor,
                             ),
                             border: InputBorder.none,
                             hintText: 'Password'
                          ),
                        )
                        ),
                        SizedBox(height: 20,),

                        //Mobile

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextFormField(
                            
                            controller: _mobileController,
                            // validator: (value){
                            //    if(value!.isEmpty){
                            //      return 'Username cannot be empty';
                            //    }else
                            //    return null;
                            //  },
                             decoration: InputDecoration(
                               icon: Icon(Icons.phone_android,
                               color: primaryColor,
                             ),
                             border: InputBorder.none,
                             hintText: 'Mobile'
                          ),
                        )
                        ),
                        SizedBox(height: 20,),

                        //Buttons

                        Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            //Cancel

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

                            //Signup

                            FloatingActionButton.extended(
                              onPressed: (){
                                // Navigator.of(context).push(MaterialPageRoute(
                                //   builder: (context)=>HomeScreen2()));
                            },
                            label: Text('Sign up',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold)
                            ),
                            backgroundColor: Colors.white,
                            foregroundColor: primaryColor,
                            ),

                          ],
                        )
                    ]
                    )
                  )
                )
              ),
            ],
        ),
      )
      ),
    );
  }
}