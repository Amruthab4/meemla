import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:memla/Reported.dart';
import 'package:memla/feeds.dart';
import 'package:memla/login/login.dart';
import 'package:memla/login/mobile.dart';
import 'package:memla/login/otp.dart';
import 'package:memla/main.dart';
import 'package:memla/scheme.dart';

class BottomNavScreen extends StatefulWidget {
  String uid="";
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    EightPage(),
    FeedPage(),
    SchemesPage(),
    ReportedPage(),
   
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
          // useLegacyColorScheme: true,
          // selectedLabelStyle: TextStyle(color: Colors.amber),
          // unselectedLabelStyle:TextStyle(color: Colors.grey), 
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded,color:_currentIndex==0?Color.fromARGB(255, 243, 87, 186):
             Colors.grey,),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schema_rounded,color:_currentIndex==1?Color.fromARGB(255, 243, 87, 186):
             Colors.grey,),
            label: 'Feeds',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.feed_outlined,color:_currentIndex==2?Color.fromARGB(255, 243, 87, 186):
             Colors.grey,),
            label: 'Schemes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.error_outline_rounded,color: _currentIndex==3?Color.fromARGB(255, 243, 87, 186):
             Colors.grey,),
            label: 'Reported',
          ),
        ],
        onTap: _onTabTapped,
         selectedItemColor: Color.fromARGB(255, 243, 87, 186),  
      ),
    );
  }
  @override
  void initState(){
   super.initState();
   //uid = FirebaseAuth.instance.currentUser.uid;
  }
  
}
