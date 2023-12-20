import 'dart:async';

import 'package:flutter/material.dart';
import 'package:memla/login/login.dart';
import 'package:memla/main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _MeMlaState();
}

class _MeMlaState extends State<Splash> {
  void initState() { 
	super.initState(); 
	Timer(Duration(seconds: 3), 
		()=>Navigator.pushReplacement(context, 
										MaterialPageRoute(builder: 
														(context) => 
														loginScreen() 
														), 
									) ,
		); 
} 

  @override
//   int _i =0;
//   String Name="";
// RegExp digitValidator  = RegExp("[0-9]+");

  Widget build(BuildContext context) {
    return Scaffold(
      body:
     Container( 
	color: Colors.black, 
	child:
  Center(child: Text("Welcome to E-MLA",style: TextStyle(fontSize: 25,color: Color.fromARGB(189, 241, 51, 168),),),),
	),);
  }
}