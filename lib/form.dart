import 'package:flutter/material.dart';
import 'package:memla/main.dart';
class ReportForm extends StatefulWidget {
  const ReportForm({super.key});

  @override
  State<ReportForm> createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                 Navigator.push(context,  MaterialPageRoute(builder: (context) => const EightPage()),);
              },
            ),
            Text("Report",style: TextStyle(color: Colors.black),),
          ],
        ),
      ),
      body:
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height:15),
          Text("Please share your issue; we'll endeavor to provide the best possible solution and assistance.",style: TextStyle(fontSize: 15,color:Colors.grey),),
          SizedBox(height:20),
           Text("Full Name",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 85, 116, 131)),),
               TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '',
                              ),
                             ),
                  SizedBox(height:20),
                     Text("Mobile no",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 85, 116, 131)),),
               TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '',
                              ),
                             ),
                 SizedBox(height:20),
                 Container(child:Row(children: [
      
                 ],)),
                     Container(
                       child:    
                                              Row(
                                 children: [
                                  
                                   Container(
                                    height:80,
                                    width:185,
                                    
                                     child:
                                     
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Pin Code",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 85, 116, 131)),),
                                          TextFormField(
                                                                   decoration:  InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: '',
                                                                   ),
                                                                  
                                                                 ),
                                        ],
                                      ),
                                   ),
                                    SizedBox(width: 20,),
                                   Container(
                                    height:80,
                                    width:185,
                                     child: 
                                     Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                        Text("City",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 85, 116, 131)),),
                                         TextFormField(
                                                                   decoration:  InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: '',
                                                                   ),
                                                                  
                                                                 ),
                                       ],
                                     ),
                                   ),
                               
                         ],
                       ),
                     ),
            SizedBox(height:20),
           Text("State",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 85, 116, 131)),),
               TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '',
                              ),
                             ),
            SizedBox(height:20),
           Text("Full Address",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 85, 116, 131)),),
               TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '',
                              ),
                             ),
                             SizedBox(height:20),
                              Text("Report",style: TextStyle(fontSize: 15,color:Color.fromARGB(204, 85, 116, 131)),),
                       
                                   Container(
                                    height:100,
                                    width:390,
                                     child: TextFormField(
                                                               decoration:  InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: '',
                                                               ),
                                                              
                                                             ),
                                   ),
                                   Container(
                 
                height:40,
                width:380,
               
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)   ,color:  Color.fromARGB(189, 241, 51, 168),),
                child: TextButton(
                         child: Text(
                    "Submit Report",
                    style: TextStyle(
                      color: Colors.white,fontSize: 17,
                    ),
                  ),
                  onPressed: () {
                      // Navigator.push(context,  MaterialPageRoute(builder: (context) => const SignUp()),);
                  },
                ),
              ),
      
        ],
        )),
      ),
    );
  }
}