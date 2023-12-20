import 'package:flutter/material.dart';
import 'package:memla/login/login.dart';
import 'package:memla/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ReportedPage extends StatefulWidget {
  const ReportedPage({super.key});

  @override
  State<ReportedPage> createState() => _ReportedPageState();
}

class _ReportedPageState extends State<ReportedPage> {
 int selectedTab = 0;
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20,
         elevation: 0,
      automaticallyImplyLeading: false,
        title:  Text("MEE-MLA",style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),),
        actions: [
           Icon(Icons.add,color: Colors.black,),
              SizedBox(width:20),
              Icon(Icons.notifications_none_outlined,color: Colors.black,),
        ],
      ),
      
      body:
      SingleChildScrollView(
        child:
         Container(
          margin: EdgeInsets.all(20),
          child:
        Column(children: [
          
         
          SizedBox(height:30),
          Container(
              padding: EdgeInsets.all(20),
              height:70,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 209, 207, 207),
              ),
              
              child: Row(
                children: [
                  // SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedTab = 1;
                      });
                      print(selectedTab);
                    },
                    style: TextButton.styleFrom(
                      primary: Color.fromARGB(255, 231, 107, 148), // Text Color
                    ),
                    child: const Text(
                      'Problem Reported',
                      style: TextStyle(fontSize: 15),textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 30),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedTab = 2;
                      });
                      print(selectedTab);
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.grey, // Text Color
                    ),
                    child: const Text(
                      'Reported',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(width: 30),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedTab = 3;
                      });
                      print(selectedTab);
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.grey, // Text Color
                    ),
                    child: const Text(
                      'Pending ',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              
            ),
            
           selectedTab==1?
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) {
              return 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                 SizedBox(
                  width: 200.w,
                  child: Text("In Kukatpally Phase 1 Drain bhjbhjbhlkjb;kbkjlbkjkjbjb",maxLines:1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                  SizedBox(height:10),
                 Text("Kukatpally, Yesterday, 09:15 AM",style: TextStyle(fontSize: 13),),
              ],),
               
             Row(
               children: [
                 Icon(Icons.push_pin_outlined),
                   SizedBox(width:20),
              Icon(Icons.keyboard_control_outlined),
               ],
             ),
            
             
            ],
                   );
           },)
           :selectedTab==2?
           Center(child: Text("No data"),)
           :
           Center(child: Text("No data"),)
        ],
        ),),
      ),
    
    );
  }
}