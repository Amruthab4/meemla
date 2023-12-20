import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:memla/login/login.dart';
import 'package:memla/login/mobile.dart';
import 'package:memla/main.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
 @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  static Future<User?> loginUsingEmailPassword({required String email,required String password,required BuildContext context})async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      user=userCredential.user;
    }on FirebaseAuthException catch(e){
      if(e.code=="user-not-found"){
        print("No user found for the email");
      }
    }
    return user;
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body:
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
             Text("Welcome to E-MLA",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
              SizedBox(height:20),
              Text("Create an account now to get started on your health and happiness journey.",style: TextStyle(fontSize: 15,color: Colors.grey),),
              SizedBox(height:20),
              
              Text("Email ID",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 85, 116, 131)),),
               TextFormField(
                controller: _emailController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '',
                              ),
                             ),
      
              SizedBox(height:20),
              Text("Pasword",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 99, 114, 121)),),
               TextFormField(
                controller: _passwordController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Password (8+ characters)',
                              ),
                             
                            ),
                            SizedBox(height:30), 
              Container(child: Row(children: [
      
                Text("Remember me",style: TextStyle(color: Colors.grey),),
                
              ],),),
              SizedBox(height: 120,),
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
                  onPressed: ()async {
                     // Navigator.push(context,  MaterialPageRoute(builder: (context) => const MobilePage()),);
                     User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                     print(user);
                     if(user!=null){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) =>  const MobilePage())),);
                     }
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
              SizedBox(height:30),
              Container(child:Row(children: [
                SizedBox(width:110),
                Center(child: Text("Login with",style: TextStyle(fontSize: 15,color:Colors.grey),)),
                SizedBox(width:3),
                 Text("Mobile No",style: TextStyle(fontSize: 15,color: Color.fromARGB(189, 241, 51, 168)),),
              ],)), 
          ],),
        ),
      )
    );
  }
}