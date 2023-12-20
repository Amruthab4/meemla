
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:memla/bottomnav.dart';
import 'package:memla/login/login.dart';
import 'package:memla/login/otp.dart';
import 'package:memla/login/resendotp.dart';
import 'package:memla/main.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  TextEditingController _controller=TextEditingController();
  var phoneNumberController = TextEditingController();
  // String VerificationId="";
 
  // final auth =FirebaseAuth.instance;
  // void signInWithPhoneAuthCredentials(PhoneAuthCredential phoneAuthCredential) async{
  // try{
  //   final authCredential = await auth.signInWithCredential(phoneAuthCredential);
  //   if(authCredential.user!=null){
  //     Navigator.push(context,  MaterialPageRoute(builder: (context) => OtpPage()),);
  //   }
  // }on FirebaseAuthException catch (e){
  //  print(e);
  // }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(height: 50,),
               IconButton(
                
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                   Navigator.push(context,  MaterialPageRoute(builder: (context) => const loginScreen()),);
                },
              ),
              SizedBox(height: 30,),
          Text("Enter Mobile Number",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(height:15),
          Text("Input your mobile number on the screen for quick and secure account access.",style: TextStyle(fontSize: 15,color: Colors.grey),),
          SizedBox(height:20),
           Text("Mobile No",style: TextStyle(fontSize: 15,color: Colors.grey),),
          //  TextFormField(
          //   controller: phoneNumberController,
          //   decoration: const InputDecoration(
          //    border: OutlineInputBorder() ,
         
          //     prefix:
          //     Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 16),
                
          //        child: Text("+91"),
          //     ),
          //        //maxLength:10,
          //     // suffix: Padding(
          //     //   padding: EdgeInsets.symmetric(horizontal: 16),
          //     //   child: Text("SUFFIX"),
          //     // ),
          //   ),
          //   keyboardType: TextInputType.number,
          //   onChanged: (value) {
          //                int _i =  int.parse(value);
          //       }, 
          //   // initialValue: '123 456789 123',
          //   // readOnly: true,
          // ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Mobile Number',
              prefix: Text("+91"),
              
            ),
            maxLength: 10,
             keyboardType: TextInputType.number,
             controller:_controller,
            // onChanged: (value) {
            //              int _i =  int.parse(value);
            //     }, 
          ),
           SizedBox(height: 280,),
              Container(
                 
                height:40,
                width:380,
               
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)   ,color:  Color.fromARGB(189, 241, 51, 168),),
                child: TextButton(
                         child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,fontSize: 17,
                    ),
                  ),
                
                  onPressed: () {
                    
                      Navigator.push(context,  MaterialPageRoute(builder: (context) =>  ResendPage(_controller.text),),);
                      // auth.verifyPhoneNumber(
                      //   phoneNumber: phoneNumberController.text.toString(),
                      //   verificationCompleted: (PhoneAuthCredential credential)async{
                      //      await auth.signInWithCredential(credential);
                      //   }, 
                      //   verificationFailed: (FirebaseAuthException e){
                      //     if(e.code == 'invalid-phonenumber'){
                      //       print('invalid phone number');
                      //     }
                      //   },
                      
                      //   codeSent: (String VerificationId, int? resendtoken)async{
                      //     this.VerificationId = VerificationId;
                      //    Navigator.push(context,  MaterialPageRoute(builder: (context) =>  ResendPage(VerificationId: VerificationId,)),);
                      //   }, 
                      //   codeAutoRetrievalTimeout: (String VerificationId){
                          
                      //   },);


  //                     final auth =FirebaseAuth.instance;
  // void signInWithPhoneAuthCredentials(PhoneAuthCredential phoneAuthCredential) async{
  // try{
  //   final authCredential = await auth.signInWithCredential(phoneAuthCredential);
  //   if(authCredential.user!=null){
  //     Navigator.push(context,  MaterialPageRoute(builder: (context) => ResendPage(VerificationId: VerificationId)),);
  //   }
  // }on FirebaseAuthException catch (e){
  //  print(e);
  // }
  // }
                  },
                ),
              ), 
                SizedBox(height:30),
              Center(child: Text("or",style: TextStyle(fontSize: 17,color: Colors.grey),)),
               SizedBox(height:30),
              Container(child:
              Row(children: [
                SizedBox(width:50),
                
                Image.asset("assets/images/google.png"),
                 SizedBox(width:40),
                Image.asset("assets/images/facebook.png"),
                 SizedBox(width:40),
                Image.asset("assets/images/apple.png"),
              ],),
              ),
               SizedBox(height:25),
              Center(child: Text("By regestering you agree to our Terms of Use",style: TextStyle(fontSize: 15,color:Colors.grey),)),
      
        ],)),
      ),
    );
  }
}