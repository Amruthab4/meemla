import 'package:flutter/material.dart';
import 'package:memla/login/login.dart';
import 'package:memla/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SchemesPage extends StatefulWidget {
  const SchemesPage({super.key});

  @override
  State<SchemesPage> createState() => _SchemesPageState();
}

class _SchemesPageState extends State<SchemesPage> {
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
        reverse: true,
        child: Container(
          margin: EdgeInsets.all(20),
          child:
        Column(children: [
        

            ListView.builder(
              reverse: true,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return 
                
                Column(
                  children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            
           
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: Text("Government has launched revised guideline for MPLADS 2023",maxLines: 2,overflow: TextOverflow.ellipsis,)),
                  SizedBox(height:5),
                  Text("Hyderabad",style: TextStyle(fontWeight: FontWeight.bold,color:  Color.fromARGB(189, 241, 51, 168),),),
                ],
              ),
            
             
             Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Today "),
                  Text("10:30 AM"),
                ],
              ),
            ],),
            // SizedBox(height:20),
            // Image.asset("assets/images/schemesimg.png",width:  330.w,fit: BoxFit.cover,),
           Stack(children: [
            Container(
              height:200,
              width:double.infinity,
              child: Image.asset("assets/images/schemesimg.png",width:  330.w,fit: BoxFit.fitWidth,),),
              Positioned(
                top:50,
                right:16,
                child: Image.asset("assets/images/menu.png"),

              )
            
           ],),
            SizedBox(height:10),
            Divider(
              height: 7,
              thickness: 2,
            ),
                  ],
                );},
            ),
          
         ],),
        ),
      ),
    );
  }
} 