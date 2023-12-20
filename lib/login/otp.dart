
import 'package:flutter/material.dart';
import 'package:memla/login/mobile.dart';
import 'package:memla/login/resendotp.dart';
import 'package:memla/main.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                   Navigator.push(context,  MaterialPageRoute(builder: (context) => const MobilePage()),);
                },
              ),
              SizedBox(height: 30,),
              Text("Enter OTP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Row(children: [
               
                Text("Sent to",style: TextStyle(fontSize: 15,color: Colors.grey),),
              ],),
      //            SizedBox(
      //                   width: 200.0,
      //                   height: 300.0,
      //                   child: Card(child: Text('Hello World!')),
      // )
      SizedBox(height:40),
                 Center(
                   child: Container(
                             width: 300,
                             height: 170,
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
                               
                               Row(
                                 children: [
                                   SizedBox(width: 40,),
                                   Container(
                                    height:50,
                                    width:40,
      
                                     child: TextFormField(
                                                               decoration:  InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: '',
                                                               ),
                                                              
                                                             ),
                                   ),
                                    SizedBox(width: 20,),
                                   Container(
                                    height:50,
                                    width:40,
                                     child: TextFormField(
                                                               decoration:  InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: '',
                                                               ),
                                                              
                                                             ),
                                   ),
                                    SizedBox(width: 20,),
                                   Container(
                                    height:50,
                                    width:40,
                                     child: TextFormField(
                                                               decoration:  InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: '',
                                                               ),
                                                              
                                                             ),
                                   ),
                                    SizedBox(width: 20,),
                                   Container(
                                    height:50,
                                    width:40,
                                     child: TextFormField(
                                                               decoration:  InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: '',
                                                               ),
                                                              
                                                             ),
                                   ),
                                 ],
                               ),
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
                     Icon(Icons.restart_alt,color: Colors.grey,),
                     TextButton(
                         child: Text(
                    "Resend",
                    style: TextStyle(
                      color: Colors.grey,fontSize: 17,
                    ),
                  ),
                  onPressed: () {
                     // Navigator.push(context,  MaterialPageRoute(builder: (context) => ResendPage()),);
                  },
                ),
                   ],
                 ),
                 SizedBox(height:60),
                 Container(
                 
                height:40,
                width:380,
                
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)   ,color:  Colors.grey),
                child: TextButton(
                         child: Text(
                    "Verify",
                    style: TextStyle(
                      color: Colors.white,fontSize: 17,
                    ),
                  ),
                  onPressed: () {
                      // Navigator.push(context,  MaterialPageRoute(builder: (context) => const SixPage()),);
                  },
                ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}