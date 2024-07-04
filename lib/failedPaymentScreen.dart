import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testnewproject/constant/constantWidget.dart';

class FailedPaymentScreen extends StatelessWidget {
  const FailedPaymentScreen({super.key});

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
      body: Center(
        child: Column(
          children: [
            SizedBox(height:height/4,),
              Image.asset("assests/fail.png",scale: 3,),
              SizedBox(height: 10,),
              Text("Payment was Failed",style: TextStyle(color: Color(0xffAD0E0E),fontFamily: "poppinsRegular"),),
            SizedBox(height: 10,),
              Text("Something went wrong. We couldn’t process\n  your payment. Contact our support if you \n                         have loss money.",
              style: TextStyle(fontSize: 12,fontFamily: "poppinsRegular",fontWeight: FontWeight.w400),
              ),
            SizedBox(height: height/3.5,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height/13,
                  width: width/2.5,
                  decoration: BoxDecoration(
                    color: ctorange,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:
                  Center(child: Text("Retry",style: TextStyle(fontFamily: "poppinsSemi",fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),)),

                ),
                SizedBox(width: 10,),
                Container(
                  height: height/13,
                  width: width/2.5,
                  decoration: BoxDecoration(
                      color: ctorange,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:
                  Center(child: Text("Support",style: TextStyle(fontFamily: "poppinsSemi",fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),)),

                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
