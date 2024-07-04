import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant/constantWidget.dart';

class SuccessPaymentScreen extends StatelessWidget {
  const SuccessPaymentScreen({super.key});

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
            Image.asset("assests/success.png",scale: 3,),
            SizedBox(height: 20,),
            Text("Payment was Successful",style: TextStyle(color: Color(0xff0AA06E),fontFamily: "poppinsSemi",fontWeight: FontWeight.w700,fontSize: 15),),
            SizedBox(height: 5,),
            Text("We have received your payment,\n                    Thankyou",
            style: TextStyle(fontWeight: FontWeight.w500,fontFamily: "poppinsRegular",fontSize: 12),
            ),
            SizedBox(height: height/3,),
            Container(
              height: height/13,
              width: width/2,
              decoration: BoxDecoration(
                  color: ctorange,
                  borderRadius: BorderRadius.circular(20)
              ),
              child:
              Center(child: Text("Receipt",style: TextStyle(fontFamily: "poppinsSemi",fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),)),

            ),
            
          ],
        ),
      ),
    );
  }
}
