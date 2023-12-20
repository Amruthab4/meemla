import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:memla/bottomnav.dart';
import 'package:memla/login/mobile.dart';
import 'package:memla/login/signin.dart';
import 'package:memla/login/signup.dart';
import 'package:memla/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Container(
        padding: EdgeInsets.all(30),
        color: Colors.black,
        child:Center(
          child: Column(
            children: [
           SizedBox(height:80),
           Image.asset("assets/images/memla.png"),
            Text("Lorem Epson is a Dummy text",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height:40),
            Container(
               
              height:40.h,
              width:360,
             
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)   ,color:  Color.fromARGB(189, 241, 51, 168),),
              child: TextButton(
                       child: Text(
                  "Create an Account",
                  style: TextStyle(
                    color: Colors.white,fontSize: 17,
                  ),
                ),
                onPressed: () {
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => const SignUp()),);
                },
              ),
            ),
            SizedBox(height:30),
            Text("or",style: TextStyle(fontSize: 17,color: Colors.white),),
             SizedBox(height:30),
            Container(child:
            Row(children: [
              SizedBox(width:50),
              
              GestureDetector(
                onTap: () {
                   _signInWithGoogle();
                },
                child: Image.asset("assets/images/google.png")),
               SizedBox(width:40),
              Image.asset("assets/images/facebook.png"),
               SizedBox(width:40),
              Image.asset("assets/images/apple.png"),
            ],),
            ),
             SizedBox(height:30),
            Text("By regestering you agree to our Terms of Use",style: TextStyle(fontSize: 15,color:Colors.white),),
            SizedBox(height:30),
            Container(child:Row(children: [
              SizedBox(width:110),
              Text("Login with",style: TextStyle(fontSize: 15,color:Colors.white),),
              
                            TextButton(
                       child: Text(
                  "Mobile No",
                  style: TextStyle(
                    color:Color.fromARGB(189, 241, 51, 168),fontSize: 15,
                  ),
                ),
                onPressed: () {
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => const MobilePage()),);
                },
              ),
            ],)),
             SizedBox(height:30),
            Container(child:Row(children: [
              SizedBox(width:80),
              Text("Already have an account?",style: TextStyle(fontSize: 15,color:Colors.white),),
            
              TextButton(
                       child: Text(
                  "Sign In",
                  style: TextStyle(
                    color:Color.fromARGB(189, 241, 51, 168),fontSize: 15,
                  ),
                ),
                onPressed: () {
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => const SignIn()),);
                },
              ),
              
            ],),),
          ],),
        ),
      
      ),
    );
    
    
  }
  _signInWithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();

    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        await _firebaseAuth.signInWithCredential(credential);
     Navigator.push(context,  MaterialPageRoute(builder: (context) =>  BottomNavScreen()),);
      }
    } catch (e) {
      //showToast(message: "some error occured $e");
    }
  }
}