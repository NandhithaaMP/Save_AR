import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testnewproject/constant/constantWidget.dart';

class ParticipantScreen extends StatefulWidget {
  const ParticipantScreen({super.key});

  @override
  State<ParticipantScreen> createState() => _ParticipantScreenState();
}

class _ParticipantScreenState extends State<ParticipantScreen> {
  bool? isChecked=false;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    List<String> selectAssembly=[
      "Assembly 1",
      "Assembly 2",
      "Assembly 3",
      "Palakkad 4",
      "Palakkad 5",
      "Palakkad 6",
      "Palakkad 7",
      "Palakkad 8",

    ];

    return Scaffold(

      appBar: AppBar(
        title: Text("Participate Now",style: TextStyle(fontFamily: "poppinsRegular"),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        SizedBox(height: 10,),
              Center(
        
                child: Text("₹ 7000",style: TextStyle(
                  color: ctorange,fontWeight: FontWeight.bold,fontSize: 35,
                ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: height / 14,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: cstgrey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: cstgrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: cstgrey),
                    ),
                    label: Text(
                      "Name",
                      style: TextStyle(
                        color: ctgrey,
                        fontFamily: "poppinsRegular",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Checkbox(
                        // tristate: true,
                        value: isChecked,
        
                        onChanged: (value) {
                            setState(() {
                              isChecked=value;
                            });
                        },
        
                    ),
                  ),
                  // TextFormField(
                  //   style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize: 20),
                  // ),
                  Text("Participate as anonymous",style: TextStyle(fontWeight: FontWeight.w600,fontFamily: "poppinsRegular"),),
        
                ],
              ),
              // SizedBox(height: 10,),
              Container(
                height: height / 14,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: cstgrey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: cstgrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: cstgrey),
                    ),
                    label: Text(
                      "Mobile Number",
                      style: TextStyle(
                        color: ctgrey,
                        fontFamily: "poppinsRegular",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Container(
                height: height / 14,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: cstgrey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: cstgrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: cstgrey),
                    ),
                    label: Text(
                      "Select District",
                      style: TextStyle(
                        color: ctgrey,
                        fontFamily: "poppinsRegular",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,top:10),
                child:
                Text("Select Assembly",style: TextStyle(fontFamily:"poppinsSemi",fontWeight: FontWeight.w600,fontSize: 15),),
              ),
        
             GridView.builder(
               shrinkWrap: true,
               itemCount: selectAssembly.length,
        
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 4,
                   crossAxisSpacing: 5,
                   mainAxisExtent: 50
                 ),
               itemBuilder:  (context, index) {
                 return Container(
        
                   child: Chip(
                     label: Container(
                       child: Text(selectAssembly[index],style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w400,fontSize: 8),),
                     ),
                     backgroundColor: index==1?ctorange:null,
                     side: BorderSide(
                       color: cstgrey
                     ),
                   ),
                 );
        
               },
             ),
        
              SizedBox(height: height/5,),
              Container(
                height: height/14,
                width: width,
        
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ctorange,
        
                ),
                child: Center(child: Text("Pay Now",style: TextStyle(color: Colors.white,fontSize:15,fontWeight:FontWeight.w500,fontFamily: "poppins"),)),
        
              )
        
        
            ],
          ),
        ),
      ),
    );
  }
}
