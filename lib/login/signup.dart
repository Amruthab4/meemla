import 'package:flutter/material.dart';
import 'package:memla/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Future<void> _signIn() async {
  //   try {
  //     UserCredential userCredential = await _auth.signInWithEmailAndPassword(
  //       email: 'user@example.com',
  //       password: 'password',
  //     );
  //     print('Signed in: ${userCredential.user!.uid}');
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body:
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                 SizedBox(height: 50,),
               IconButton(
                
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                   Navigator.push(context,  MaterialPageRoute(builder: (context) => const loginScreen()),);
                },
              ),
              SizedBox(height: 30,),
                SizedBox(height:100),
                SizedBox(width:100),
                 Text("Already have an acoount?",style: TextStyle(fontSize: 15,color: Colors.grey),),
                 Text("Sign In",style: TextStyle(fontSize: 15,color:Color.fromARGB(189, 241, 51, 168,),fontWeight: FontWeight.bold),),
                 ],),
              Text("Welcome to E-MLA",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
              SizedBox(height:20),
              Text("Create an account now to get started on your health and happiness journey.",style: TextStyle(fontSize: 15,color: Colors.grey),),
              
              SizedBox(height:20),
            
              Text("First Name",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 99, 114, 121)),),
               TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '',
                              ),
                             
                            ),
               SizedBox(height:20),
            
              Text("Last Name",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 99, 114, 121)),),
               TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '',
                              ),
                             
                            ),   
      
              SizedBox(height:20),
            
              Text("Email ID",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 99, 114, 121)),),
               TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '',
                              ),
                             
                            ),   
      
              SizedBox(height:20),
            
              Text("Pasword",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 99, 114, 121)),),
               TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Password (8+ characters)',
                              ),
                             
                            ),  
                SizedBox(height:30),
                Container(
                 
                height:40,
                width:380,
               
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)   ,color:  Color.fromARGB(189, 241, 51, 168),),
                child: TextButton(
                         child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,fontSize: 17,
                    ),
                  ),
                  onPressed: () {
                      // Navigator.push(context,MaterialPageRoute(builder: (context) => const FifthPage()),);
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
              Center(child: Text("By regestering you agree to our Terms of Use",style: TextStyle(fontSize: 15,color:Colors.grey),),),
              SizedBox(height:30),
              Container(child:Row(children: [
                SizedBox(width:110),
                Center(child: Text("Login with",style: TextStyle(fontSize: 15,color:Colors.grey),),),
                SizedBox(width:3),
                 Text("Mobile No",style: TextStyle(fontSize: 15,color: Color.fromARGB(189, 241, 51, 168)),),
              ],),), 
            ],
          ),
        ),
      ),
    );
  }
  signInWithGoogle(){
    
  }
}