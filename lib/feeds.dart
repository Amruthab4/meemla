import 'package:flutter/material.dart';
import 'package:memla/login/login.dart';
import 'package:memla/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart'; 
import 'package:share/share.dart';
import 'package:readmore/readmore.dart';

// import 'package:share_plus/share_plus.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
   _shareData() {
    Share.share('hi i am amrutha');
  }
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
      // Container(child: Text("MEE-MLA",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),),),
      
      SingleChildScrollView(
        child: Container(
         margin: EdgeInsets.all(15.r),
            child: 
            Column(children: [
           
            
              // Container(
                  
              //   child:,),
                       
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    itemCount: 10,
                                    itemBuilder: (BuildContext context, int index) {
                                      return
                                       Column(children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              
                                                Row(
                                                  children: [
                                                      Image.asset("assets/images/feedimage.png",),
                                                 SizedBox(width:5),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                      
                                                      Text("N.Narender",style: TextStyle(fontWeight: FontWeight.bold),),
                                                     SizedBox(height:6),
                                                      Row(
                                                        children: [
                                                          Text("MLA "), 
        Text("|"),
                                                          
                                                          Text(" BRS",style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromARGB(255, 243, 7, 156),),),
                                                        ],
                                                      )
                                                    ],),
                                                  ],
                                                ),
                                               
                                                PopupMenuButton(
                                        itemBuilder: (context) => [
                                        PopupMenuItem(
                                          child: 
                                          Row(
                                            children: [
                                              Icon(Icons.hide_source_sharp),
                                              SizedBox(width:5),
                                              Text("Hide"),
                                            ],
                                          ),
                                          value: 1,
                                        ),
                                        PopupMenuItem(
                                          child:
                                           Row(
                                             children: [
                                              Icon(Icons.error_outline_sharp),
                                               Text("Report"),
                                             ],
                                           ),
                                          value: 2,
                                        ),
                                        
                                        ],
                            ),
                        ],),
                                              SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                            
                                              SizedBox(
                                                width: 200.w,
                                                child: ReadMoreText(
                                                "Election Meeting with rliamentElection Meeting with Parliament Election Meeting with rliamentElection Meeting with Parliament Election Meeting with rliamentElection Meeting with Parliamen",
                                                trimLines: 2,
                                                colorClickableText: Colors.pink,
                                                trimMode: TrimMode.Line,
                                                trimCollapsedText: 'Show more',
                                                trimExpandedText: 'Show less',
                                                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                                lessStyle: TextStyle(fontSize:  14, fontWeight: FontWeight.bold),
                                              ),
                                              ),
                                              SizedBox(width:30),
                                              Column(
                                             
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  
                                                  Text("Today "),
                                                  Text("10:30 AM"),
                                                ],
                                              ),
                                            ],),
                                            Stack(children: [
                                              Container(
                                                height: 300,
                                                width: double.infinity,
                                                child: Image.asset("assets/images/parlament.png",fit: BoxFit.fitWidth,) ,),
                                                Positioned(
                        
                                                  bottom: 45,
                                                  right: 20,
                                                  
                                                  child:
                                                 
                                                   GestureDetector(
                                                    child: Image.asset("assets/images/share.png",),
                                                    onTap: () {
                                                      _shareData();
                                                    },
                                                   ),
                                                  // Row(
                                                    
                                                  //   children: [ 
                                                  //     Image.asset("assets/images/apple.png"), 
                                                  //     GestureDetector(
                                                  //        onTap: () {
                                                  //           _shareData();
                                                  // //   Share.share("Hi this is ram",subject: 'memla');
  
                                                  //       },
                                                  //       child: Image.asset("assets/images/share.png"),
                                                  //       )],),
                                                 ),
                                            ],),
                                            //  Stack(children: [
                                            //   Container(
                                            //     height: 300,
                                            //     width: double.infinity,
                                            //     child: Image.asset("assets/images/parlament.png",fit: BoxFit.fitWidth,) ,),
                                            //     Positioned(
                        
                                            //       bottom: 33,
                                            //       right: 5,
                                            //       child:Row(
                                                    
                                            //         children: [ Image.asset("assets/images/apple.png"), Image.asset("assets/images/apple.png")],)
                                            //      )
                                            // ],),
                                            // Container(
                                            //   height:300,
                                            //   width:500,
                                            //   child: Image.asset("assets/images/parlament.png",fit: BoxFit.fitWidth,),),
                                               Divider(
                                              height: 7,
                                              thickness: 1,
                                            ),
                                          ],);}
                               
                            ),
                      
                      
              ],),
        ),
      ),
    );

  }
}