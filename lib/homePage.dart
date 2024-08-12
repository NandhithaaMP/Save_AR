import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testnewproject/constant/constantWidget.dart';
import 'package:testnewproject/participantScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List<String>toppers=["Asif Saheer KP","Jouhar Muhammed","Ameen Yasar"];
    List<String>money=["₹ 200000","₹ 20000","₹ 15000"];
    List<String> place=["Kondotty","Malappuram","Vengara"];
    List<String>medals=["assests/medals/medal1.png",
    "assests/medals/medal2.png",
      "assests/medals/medal3.png"
    ];
    List<String> payment=[
      "₹ 100",
      "₹ 500",
      "₹ 1,000",
      "₹ 2,000",
      "₹ 5,000",
      "₹ 10,000",

    ];

    List<String> grid=[
      "assests/transB.png",
      "assests/histroyB.png",
      "assests/regB.png",
      "assests/paymentB.png",
      "assests/volunteerB.png",
      "assests/districtB.png",
      "assests/LeaderB.png",
      "assests/reportB.png"
    ];
    List<String> griddata=[
      "Transaction",
      "My History",
      "Volunteer Registration",
      "Volunteer Payment",
      "Top Volunteer",
      "Top District",
      "Leader Boarder",
      "Reports"
    ];
    List<String> row=[
      "assests/privacy.png",
      "assests/term&condition.png",
      "assests/contactus.png"
    ];
    List<String> rowdata=["Privacy Policy","Terms and Conditions","Contact Us"];
    return SafeArea(
      child: Scaffold(
        body: 
        SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height/1.8,
                width: width,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(50),
                    bottomRight: Radius.circular(50) ),
                  image: DecorationImage(
                    image: AssetImage("assests/hand.png"),
                    fit: BoxFit.fill
                  )
                 // image: AssetImage("assests/hand.png"),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Join hands to wipe away this mother's tears",style: TextStyle(fontFamily: "poppinsregular",fontSize: 12,fontWeight: FontWeight.w700),),
                    Center(child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Text('"ഈ ഉമ്മയുടെ കണ്ണീരൊപ്പാൻ \n    കൈ കോർക്കുക"',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,fontFamily: "interBold"),),
                    )),
              // SizedBox(height: 20,),
                    Container(
                      height: height/4,
                      width: width/1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assests/secondhand.png"),
                        fit: BoxFit.fill,
                        
                      ),
                        color: Colors.red
                      ),
                    ),
                    // SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
              
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                                ,color: Colors.white
                          ),
                          child:
                          Center(
                              child:
                                  Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        child: Image(
                                          image: AssetImage("assests/youtube.png"),
                                        )
          
                                      ),
                                      Text("How to pay?",style: TextStyle(fontFamily: "poppins"),),
                                    ],
                                  ),
              
              
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 50,
                          width: 150,
              
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                              ,color: Colors.white
                          ),
                          child: Center(
                              child:
                                  Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Icon(Icons.call),
                                      Container(
                                          height: 30,
                                          width: 30,
                                          child: Image(
                                            image: AssetImage("assests/call.png"),
                                          )
                                      ),
                                      Text("App support",style: TextStyle(fontFamily: "poppins"),)
                                    ],
                                  ),
              
                          ),
                        )
                      ],
                    )
              
              
                  ],
                ),
              ),
              
              SizedBox(height: 10,),
              Center(
                child: Text("₹33,30,00,000",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w900,
                      fontFamily: "interBold"
                  ),
                ),
              ),
              Center(child: Text("Collected so far",style: TextStyle(fontSize: 15,color: Colors.grey,fontFamily: "poppinsBold",fontWeight: FontWeight.w700),)),
              
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text("Today's Toppers",style: TextStyle(color: ctorange,fontWeight: FontWeight.w400,fontFamily: "poppinsBold"),),
              ),
                

              ListView.builder(
                itemCount: toppers.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  // scrollDirection: Axis.vertical,
                  itemBuilder:(context, index) {
                    return Container(
                      child: ListTile(
                        leading: Image.asset(medals[index]),
                        title: Text(toppers[index],style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "poppins"),),
                        subtitle: Text(place[index],style: TextStyle(color: Colors.grey,fontFamily: "poppins"),),
                        trailing: Text(money[index].toString(),style: TextStyle(fontFamily: "poppins"),),
                      ),
                    );
                  },
              ),
              Center(child: Text("Quick Pay",style: TextStyle(fontFamily: "PoppinsBold",fontWeight: FontWeight.w700,fontSize: 14),)),
              SizedBox(height: 10,),

              GridView.builder(
                itemCount: payment.length,
                shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 50,

                  ),

                  itemBuilder: (context, index) {
                    return Container(
                        
                      child: Chip(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),side: BorderSide(color: ctorange)),
                        label: Container(
                          // height: 50,
                          width: 60,


                          child: Text(payment[index]),
                        ),
                      ),
                    );
                  },
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: GridView.builder(
                  itemCount: griddata.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      // mainAxisSpacing: 6,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 130,


                    ),
                    itemBuilder:(context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              //   color: Colors.pink,
                              boxShadow: [
                                BoxShadow(color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                   // blurStyle: BlurStyle.outer,
                                  offset: Offset(0, 3), ),

                              ],
                              shape: BoxShape.rectangle
                            ),

                            child:
                            Image.asset(grid[index],scale: 3,),
                            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),


                          ),
                          Text(griddata[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,fontFamily: "poppinsSemi"),
                          )
                        ],
                      );
                    },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                    itemCount: 3,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      // childAspectRatio: 5,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 50,


                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 10,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: cstgrey),
                          boxShadow: [
                            BoxShadow(color: cstgrey,
                            blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                            )
                          ]
                        ),

                        child:
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(row[index],scale: 3,),
                            Text(rowdata[index],style: TextStyle(fontSize: 8),)
                          ],
                        ),
                        // Icon(Icons.privacy_tip_outlined)

                      );
                    },
                ),
              ),SizedBox(height: 80,)


          
                      ],
          ),
        ),
        floatingActionButton: Container(
          height: 60, // Adjust the height as needed
          width: MediaQuery.of(context).size.width - 40, // Adjust the width as needed
          child: FloatingActionButton.extended(
            onPressed: () {
              // Your onPressed logic here
            },
            label: Text(
              'Contribute Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'poppins',
              ),
            ),
            backgroundColor: Color(0xffC46F4E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


        
      ),
    );
  }
}
