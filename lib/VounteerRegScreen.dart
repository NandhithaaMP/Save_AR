import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testnewproject/constant/constantWidget.dart';

class VolunteerRegScreen extends StatelessWidget {
  const VolunteerRegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Volunteer Registration",style: TextStyle(fontFamily: "poppinsSemi",fontSize: 15,fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
      ),
    // floatingActionButton: Align(
    //   child: Container(
    //     height: height/10,
    //     width: 200,
    //     child: FloatingActionButton(
    //       onPressed: () {
    //
    //       },
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(10)
    //       ),
    //       child: Text(
    //         "Register"
    //       ),
    //       backgroundColor: ctorange,
    //     ),
    //   ),
    // ),

      body:
      Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height/5.5,),
            Text("Register",style: TextStyle(color: ctorange,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 14),),
            Text("As a volunteer",style: TextStyle(color: Color(0xff6A6A6A),fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 10),),

            SizedBox(height: 15,),
            Container(height: height/14,

              child: TextFormField(
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey), // Set border color to

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)), // Set enabled border color to grey
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)), // Set focused border color to grey
                  ),
                  hintText: "Name",
                  hintStyle: TextStyle(
                    fontFamily: "poppinsRegular",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey, // Set hint text color to grey
                  ),
                ),
                style: TextStyle(
                  color: Colors.grey, // Set input text color to grey
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(height: height/14,

              child: TextFormField(
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey), // Set border color to

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)), // Set enabled border color to grey
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)), // Set focused border color to grey
                  ),
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(
                    fontFamily: "poppinsRegular",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey, // Set hint text color to grey
                  ),
                ),
                style: TextStyle(
                  color: Colors.grey, // Set input text color to grey
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(height: height/14,

              child: TextFormField(
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey), // Set border color to

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)), // Set enabled border color to grey
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffE6E6E6)), // Set focused border color to grey
                  ),
                  hintText: "Panchayath",
                  hintStyle: TextStyle(
                    fontFamily: "poppinsRegular",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey, // Set hint text color to grey
                  ),
                ),
                style: TextStyle(
                  color: Colors.grey, // Set input text color to grey
                ),
              ),
            ),
            SizedBox(height: height/3.8,),
            Container(
              height: height/12,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ctorange
              ),
              child: Center(child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "poppinsRegular"),)),
            )

          ],

        ),
      ),


    );
  }
}
