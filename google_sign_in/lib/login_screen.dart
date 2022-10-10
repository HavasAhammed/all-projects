import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/googgle_sign_in.dart';
import 'package:google_sign_in/home_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {

  Color primaryColor = Colors.green;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 20,
                      ),
                    ),

                    const SizedBox(height: 10),

                    //Title

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Sign In/',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),

                         //Username

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
                               hintText: 'Email',                              
                             ),
                           ),
                         ),
                         const SizedBox(height: 20),

                         //Password

                         Container(
                           padding: EdgeInsets.symmetric(horizontal: 20),
                           width: MediaQuery.of(context).size.width,                          
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(30)
                           ),
                           child: TextFormField(
                             obscureText: true,
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
                               hintText: 'Password',
                               
                            
                             ),
                           ),
                         ),


                         //Forgotpassword

                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             TextButton(onPressed: (){
                               
                             },
                              child: Text('Forgot Password?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                              )
                              )    
                           ],
                         ),
                         const SizedBox(height: 20,),

                         //SignIn

                         MaterialButton(
                           onPressed: (){
                             checkLogin(context);
                           },
                           child: Text('Login',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 16),
                             ),
                             color: Colors.white,
                             textColor: primaryColor,
                             shape: const StadiumBorder(),
                             padding: const EdgeInsets.all(25),
                             elevation: 7,
                             minWidth: 230,
                             height: 10,

                         ),
                         const SizedBox(height: 20,),

                         //Google SignIn

                         FloatingActionButton.extended(
                          
                           onPressed: (){
                             final provider=Provider.of<GoogleSignInProvider>(context, listen: false);
                        provider.googleLogin();
                           }, 
                           label: const Text('Sign in with Google'),
                           icon: Image.asset(
                             'assets/images/google_logo.png',
                             width: 32,
                             height: 32,
                           ),
                           backgroundColor: Colors.white,
                           foregroundColor: Colors.black,
                         ),
                         

                         //SignUp

                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Text('Don\'t have an Account?',
                             style: TextStyle(fontSize: 15,
                             fontWeight: FontWeight.w500,
                             color: Colors.black),
                             ),
                             TextButton(
                               onPressed: (){
                                 
                               }, 
                             child: const Text('Sign Up',
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: 18,
                               fontWeight: FontWeight.bold),))
                             
                           ],)


                      ],
                      
                    ),
                  ),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext context) {
    final _eml = _emailController.text;
    final _pswd = _passwordController.text;
    Map<String, dynamic> login = {
      '_email': 'Email',
      '_password': 'Password'
    };

    if (login['_email'] == _eml && login['_password'] == _pswd) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    } else {
      final _errorMessage = 'Username and Password doesnot match';
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.black87,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
        content: Text(_errorMessage),
      ));
    }
  }

}