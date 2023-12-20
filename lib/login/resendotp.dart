

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:memla/bottomnav.dart';
import 'package:memla/login/otp.dart';
import 'package:memla/main.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:snackbar/snackbar.dart';

class ResendPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String? _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final String Phone;
  ResendPage(this.Phone);
  
  
  // final String VerificationId;

  //const ResendPage({Key? key, required this.VerificationId}):super(key: key);

  @override
  State<ResendPage> createState() => _ResendPageState();
}

class _ResendPageState extends State<ResendPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  var otpController = TextEditingController();
  final auth =FirebaseAuth.instance;
  String VerificationId="";
  String _verificationCode="";
 final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
    );

  @override
  Widget build(BuildContext context) {
    var _pinPutController;
    return Scaffold(
      key: _scaffoldkey,
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
                   Navigator.push(context,  MaterialPageRoute(builder: (context) => const OtpPage()),);
                },
              ),
              SizedBox(height: 30,),
              Text("Enter OTP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Row(children: [
               
                Text("Sent to",style: TextStyle(fontSize: 15,color: Colors.grey),),
                Text("+1-${widget.Phone}",style: TextStyle(fontSize: 15,color: Colors.grey),),

              ],),
       //            SizedBox(
       //                   width: 200.0,
       //                   height: 300.0,
       //                   child: Card(child: Text('Hello World!')),
       // )
       SizedBox(height:40),
                 Center(
                   child: Container(
                             width: 330,
                             height: 280,
                             
                             decoration: BoxDecoration(
                               color: Colors.white,
                               
                   boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(10,10),
                      blurRadius: 30,
                    ),
                               ],
                              ),
                              child: Column(children: [
                                SizedBox(height:20),
                                 Padding(
            padding: const EdgeInsets.all(30.0),
            child: Pinput(
              length: 6,
              defaultPinTheme: defaultPinTheme,
             
              controller: _pinPutController,
           
              pinAnimationType: PinAnimationType.fade,
              onSubmitted: (pin) async {
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(PhoneAuthProvider.credential(
                          verificationId: _verificationCode!, smsCode: pin))
                      .then((value) async {
                    if (value.user != null) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNavScreen()),
                          (route) => false);
                    }
                  });
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
                 
                }
              },
            ),
          ),
                                
        //                           OtpTextField(
        // numberOfFields: 5,
        // borderColor: Colors.grey,
      
        // showFieldAsBox: true, 
     
        // onCodeChanged: (String code) {
        //     //handle validation or checks here           
        // },
        // //runs when every textfield is filled
        // onSubmit: (pin)async{
        //  try{
        //    await FirebaseAuth.instance.signInWithCredential(PhoneAuthProvider.credential(
        //     verificationId: _verificationCode,
        //      smsCode: pin)).then((value) async{
        //       if(value.user!=null){
        //         //print("pass to home");
        //           Navigator.pushAndRemoveUntil(context,  MaterialPageRoute(builder: (context) =>  BottomNavScreen()),(route) => false);
                
        //       }
        //      });
        //  }catch(e){
        //   Text("invalid otp");
        //     // FocusScope.of(context).unfocus();
        //     // _scaffoldkey.currentState.showSnackBar(SnackBar(content: Text('invalid otp')));

        //  }
            // showDialog(
            //     context: context,
            //     builder: (context){
            //     return AlertDialog(
            //         title: Text("Verification Code"),
            //         content: Text('Code entered is $verificationCode'),
            //     );
            //     }
            // );
    //     }, 
    // ),
                               
                          
                             
                               SizedBox(height: 20,),
                               Row(
                                
                                 children: [
                                  SizedBox(width:80),
                                   Text("Resending OTP in",style: TextStyle(color: Colors.grey,),),
                                   Text("58s",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                 ],
                               ),

                               SizedBox(height:10),
                               Text("Wrong Number?",style: TextStyle(fontSize: 15,color: Color.fromARGB(189, 241, 51, 168)),),
                                  
                              ],),
                        
                            
                             ),
                 ),
                 SizedBox(height:130),
       
                 Center(child: Text("Didn't receive the OTP?",style: TextStyle(color: Colors.grey,),)),
                   SizedBox(height: 20,),
                 Row(
                   children: [
                    SizedBox(width:140),
                  
                     Icon(Icons.restart_alt,color:Color.fromARGB(189, 241, 51, 168),),
                     TextButton(
                         child: Text(
                    "Resend",
                    style: TextStyle(
                      color: Color.fromARGB(189, 241, 51, 168),fontSize: 17,
                    ),
                  ),
                  onPressed: () {
                      // Navigator.push(context,  MaterialPageRoute(builder: (context) => const SevenPage()),);
                  },
                ),
                   ],
                 ),
                 SizedBox(height:60),
                 Container(
                 height:40,
                width:380,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Color.fromARGB(189, 241, 51, 168)),
                child: TextButton(
                         child: Text(
                    "Verify",
                    style: TextStyle(
                      color: Colors.white,fontSize: 17,
                    ),
                  ),
                  onPressed: () async {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>   BottomNavScreen()),);
                    //  PhoneAuthCredential phoneAuthCredential=PhoneAuthProvider.credential(verificationId: VerificationId,smsCode: otpController.text.toString());
                    //  auth.signInWithCredential(phoneAuthCredential);
                       //Navigator.push(context,MaterialPageRoute(builder: (context) =>   BottomNavScreen()),);

                  },
                ),
              ), 
            ],
          ),
             ),
       )
    );
  }
  _verifyPhone()async{
    await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: '+1${widget.Phone}',
    verificationCompleted: (PhoneAuthCredential credential)async{
      await FirebaseAuth.instance.signInWithCredential(credential).then((value) async{
        if(value.user!=null){
          Navigator.pushAndRemoveUntil(context,  MaterialPageRoute(builder: (context) =>  BottomNavScreen()),(route) => false);
        }
      });

    },
    verificationFailed: (FirebaseAuthException e){
      print(e.message);
    },
    codeSent: (String VerificationId, int? resendtoken)async{
     setState(() {
       _verificationCode = VerificationId;
     });
    }, 
    codeAutoRetrievalTimeout:  (String verificationId) {
      setState(() {
       _verificationCode = VerificationId;
        
      });
    },timeout: Duration(seconds: 60)
    );
  }
  @override
  void initState(){
    super.initState();
    _verifyPhone();
  }
}