import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testnewproject/constant/constantWidget.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Status",style: TextStyle(fontFamily: "poppinsSemi",fontSize: 15,fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: height/2,
              width: width,
              decoration: BoxDecoration(
                  color: cstgrey
              ),

            ),

            SizedBox(height: 15,),
            Row(

              children: [
                Row(
                  children: [
                    Image.asset("assests/tick.png",scale: 5,),
                    Text("  456456785412642",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 10),)
                  ],
                ),
                SizedBox(width: 45,),
                Row(
                  children: [
                    Image.asset("assests/mobile.png",scale: 5,),
                    Text("  ******23456",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 10))
                  ],
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(

              children: [
                Row(
                  children: [
                    Image.asset("assests/person.png",scale: 5,),
                    Text("  Asif KP",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 10))
                  ],
                ),
                SizedBox(width: 104,),
                Row(
                  children: [
                    Image.asset("assests/unit.png",scale: 5,),
                    Text("  Unit",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 10))
                  ],
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Image.asset("assests/throughgpay.png",scale: 5,),
                Text("  Through GooglePay",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 10))
              ],
            ),

            SizedBox(height: 55,),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: height/17,
                    width: width/2.5,
                    decoration: BoxDecoration(
                        color: ctorange,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child:
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_circle_outline,color: Colors.white,size: 13,),
                        SizedBox(width: 5,),
                        Text("Add Volunteer",style: TextStyle(color: Colors.white,fontFamily: "poppinsSemi",fontSize: 14,fontWeight: FontWeight.w700),)
                      ],
                    )
                  // Text("Upload Photo"),
                ),
                SizedBox(width: 25,),
                Container(
                    height: height/17,
                    width: width/2.5,
                    decoration: BoxDecoration(
                        color: ctorange,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child:
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assests/share.png",scale: 4,),
                        SizedBox(width: 5,),
                        Text("Share",style: TextStyle(color: Colors.white,fontFamily: "poppinsSemi",fontSize: 14,fontWeight: FontWeight.w700),)
                      ],
                    )
                  // Text("Upload Photo"),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Container(
                height: height/12,
                width: width,
                decoration: BoxDecoration(
                    color: ctorange,
                    borderRadius: BorderRadius.circular(20)
                ),
                child:
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assests/share.png",scale: 4,),
                    SizedBox(width: 5,),
                    Text("Make WhatsApp Status",style: TextStyle(color: Colors.white,fontFamily: "poppinsSemi",fontSize: 14,fontWeight: FontWeight.w700),)
                  ],
                )
              // Text("Upload Photo"),
            )
          ],
        ),
      ),
    );
  }
}
