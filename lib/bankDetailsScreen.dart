import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testnewproject/constant/constantWidget.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text("APP വഴി പണമയക്കുന്നതിന് തടസ്സം നേരിടുന്നവർക്ക്\n താഴെ  കൊടുത്ത  അക്കൗണ്ടുകളിലേക്ക്  ട്രാൻസ്ഫർ \nചെയ്യാവുന്നതാണ് ",style: TextStyle(fontFamily: "poppinsRegular",fontSize: 11,fontWeight: FontWeight.w600),),
          
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height/4.4,
                    width:width ,
                    decoration: BoxDecoration(
                      color: ctorange,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Scan QR Code",style: TextStyle(fontFamily: "poppinsSemi",fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(10),
                             child: Container(
                               height: height/6,
                               width: width/3,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20),
                                 image: DecorationImage(
                                   image: AssetImage("assests/QR.png")
                                 )
                               ),
                             ),
                           ),
                           Text("abdulrahim153@fbl",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,fontFamily: "poppinsRegular",color: Colors.white),)
                         ],
                       )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height/8,
                    width:width ,
                    decoration: BoxDecoration(
                      color: ctorange,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 20,right: 8),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height/20,
                            width: width/2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
          
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assests/Google_Pay_logo_PNG2 1.png",scale: 4,),
          
                                Image.asset("assests/phonepe.png",scale: 4,),
          
          
                              ],
                            ),
          
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("Mobile Number : ",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12)),
                              Text("+91 95674 83832",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12),)
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height/4.8,
                    width:width ,
                    decoration: BoxDecoration(
                      color: ctorange,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 20,right: 8),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height/20,
                            width: width/2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
          
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Image.asset("assests/icicbank.png",scale: 4,),
          
                          ),
                          SizedBox(height: 8,),
                          Text("MP ABDUL RAHIM LEGAL ASSISTANCE COMMITTEE",style: TextStyle(fontFamily: "poppinsRegular",fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("Ac No : ",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12)),
                              Text("074905001625",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12),)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("IFSC : ",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12)),
                              Text("ICIC0000749",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12),)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("BRANCH : ",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12)),
                              Text(" ICICI MALAPPURAM",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12),)
                            ],
                          ),
                        ],
                      ),
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height/4.8,
                    width:width ,
                    decoration: BoxDecoration(
                      color: ctorange,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 20,right: 8),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height/35,
                            width: width/2.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assests/federalbank.png"),fit: BoxFit.fill
                              )
                            ),
                            // child:
                            // Image.asset("assests/federalbank.png",scale: 4,fit: BoxFit.fill,),
          
                          ),
                          SizedBox(height: 8,),
                          Text("MP ABDUL RAHIM LEGAL ASSISTANCE COMMITTEE",style: TextStyle(fontFamily: "poppinsRegular",fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("Ac No : ",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12)),
                              Text("11100200018153",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12),)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("IFSC : ",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12)),
                              Text("FDRL0001110",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12),)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("BANK : ",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12)),
                              Text("FEDERAL BANK",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12),)
                            ],
                          ),
                          Row(
                            children: [
                              Text("BRANCH : ",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12)),
                              Text("CHERUVANNOOR",style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12),)
                            ],
                          ),
                        ],
                      ),
                    )
                  ),
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
