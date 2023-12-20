import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:memla/firebase_options.dart';
import 'package:memla/form.dart';
import 'package:memla/login/login.dart';
import 'package:memla/login/mobile.dart';
import 'package:memla/login/otp.dart';
import 'package:memla/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  
     ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return  MaterialApp(home:Splash(),    debugShowCheckedModeBanner: false,);
      },
      
    ); 
    //MaterialApp(home:Splash(),debugShowCheckedModeBanner: false,);
  }
}



class EightPage extends StatefulWidget {
  const EightPage({super.key});
  
  @override
  State<EightPage> createState() => _EightPageState();
}

class _EightPageState extends State<EightPage> {
  get controller => null;

    // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
    elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 20,
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
          Image.asset("assets/images/profile.png"),
          SizedBox(width:5),
          Text("Hi, Kishore",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
        ],
      ),
    actions: [
      Row(
          children: [
            Icon(Icons.calendar_month,color: Colors.black,),
            SizedBox(width:20),
            Icon(Icons.notifications_none_outlined,color: Colors.black,),
          ],
        ),
      ],
      ),
      body:
      SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child:Column(children: [
         

            SizedBox(height:20),
           Container(
        // You can customize the Container's properties as needed
       decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
             color: Color.fromARGB(255, 247, 221, 230),),
        padding: EdgeInsets.all(8.0),
        child: ExpansionTile(
          title:      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(                 
      
      
                  
                    children: [
                      Icon(Icons.error_outline_rounded,color: Color.fromARGB(134, 151, 59, 90),),
                      SizedBox(width:10),
                  Text("Announcement",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                    ],
                  ),
                  
                  
                  Text("06-01-23",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              ],),
          children: <Widget>[
          Text('\u2022  MPLADS 2023 కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది',style: TextStyle(fontSize: 18,color: Colors.grey),),
                          
                Text('\u2022  MPLADS 2023 కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది',style: TextStyle(fontSize: 18,color: Colors.grey),)
                          
            
            
          ],
        ),
          ),
                                    
        //   Container(
        //     padding: EdgeInsets.all(20),
        // //    height:200,
        //     //width:400,
        //     decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
        //      color: Color.fromARGB(255, 247, 221, 230),),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //           Row(                 
      
      
                  
        //             children: [
        //               Icon(Icons.error_outline_rounded,color: Color.fromARGB(134, 151, 59, 90),),
        //               SizedBox(width:10),
        //           Text("Announcement",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
        //             ],
        //           ),
                  
                  
        //           Text("06-01-23",style: TextStyle(),),
        //       ],),
        //          SizedBox(height:15),
                 
        //           Container(
                   
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
                 
        //                 Container(
        //                   padding: EdgeInsets.only(left:20),
        //                   child: Text('\u2022  MPLADS 2023 కోసం ప్రభుత్వం సవరించిన మార్గదర్శకాలను ప్రారంభించింది',style: TextStyle(fontSize: 18,color: Colors.grey),)),
                          
        //                   SizedBox(height:10),
        //                   // Text("\u2022  MPLADS of Parliament Local.....",style: TextStyle(fontSize: 18,color: Colors.grey),),
        //              ExpansionTile(
        //               expandedCrossAxisAlignment:CrossAxisAlignment.start,
        //         controller: controller,
        //         title: 
        //         // Row(
        //         //   children: [
        //     Text("\u2022  MPLADS of Parliament Local hgchgkvlb lkhlkh bbhlhbhlj",style: TextStyle(fontSize: 18,color: Colors.grey),),
        //         //   ],
        //         // ),
        //         // children: 
        //         // <Widget>[
        //           // Container(
        //           //   child:  Text("\u2022  MPLADS of Parliament Local....."),
        //           // ),
        //         // ],
        //       ),
        //             //              SizedBox(width:100),
        //             // Icon(Icons.expand_more,),
        //               ],
        //             ),
        //           ),
                  
        //        ],
        //    ),
        //   ),
         
          SizedBox(height:20),
          Container(
                        width: double.infinity,
                        
                        padding: EdgeInsets.all(10.r),
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          
              boxShadow: [
               BoxShadow(
                 color: Color.fromARGB(255, 216, 215, 215),
                 offset: Offset(10,10),
                 blurRadius: 30,
               ),
                          ],
                         ),
                     
                     child:   
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           hgchg


                       children: [
                       Row(
                         children: [
                          ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child:    Image.asset("assets/images/image.png",
                               // height: 200.h,
                                ),
),
                         
                                   SizedBox(width:20),
                       Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height:35),
                         Text("BRS",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 243, 7, 156),fontWeight: FontWeight.bold),),
                         SizedBox(height:10),
                         Text("N. Narender",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height:5),
                         Text("MEE MLA - Warangal",style: TextStyle(fontSize: 15,color: Colors.grey,),),
                       ],),
                         ],
                       ),
                    
                         SizedBox(width:30),
                         Image.asset("assets/images/ysr.png"),
                      ],),
                     ),
          SizedBox(height:70),
          Container( 
            child: Column(
              children: [
                Text("Reported",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.start,),
                SizedBox(height: 40,),
               Container(
                height:40,
                width:170,
               decoration: BoxDecoration(borderRadius:BorderRadius.circular(10) ,color:  Colors.white,border:Border.all(color:  Color.fromARGB(189, 241, 51, 168),)),
                child: TextButton(
                         child: Text(
                    "Report Problem",
                    style: TextStyle(
                      color:  Color.fromARGB(189, 241, 51, 168),
                    ),
                  ),
                  onPressed: () {
                      Navigator.push(context,  MaterialPageRoute(builder: (context) => const ReportForm()),);
                  },
                ),
              ),
               ],
            ),
          ),
           ],),
        ),
      ),
      );
  }
}





