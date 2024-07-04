import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant/constantWidget.dart';

class SelectPayment extends StatelessWidget {
  const SelectPayment({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Participate Now",style: TextStyle(fontFamily: "poppinsRegular"),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(

              child: Text("₹ 7000",style: TextStyle(
                color: ctorange,fontWeight: FontWeight.bold,fontSize: 35,
              ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Select Payment Method",style: TextStyle(fontFamily: "poppinsSemi",fontSize: 12,),),
            ),
            SizedBox(height: 20,),
            Container(
              height: height/12,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)

              ),
              child:
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assests/paytm.png",),
                    Text("Paytm",style: TextStyle(fontFamily: "poppinsSemi"),),
                    Icon(Icons.arrow_forward_ios,size: 16,)
                  ],
                ),
              )
            ),
            SizedBox(height: 10,),
            Container(
              height: height/12,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)

              ),
              child:
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assests/gpay.png",),
                    Text("Google Pay",style: TextStyle(fontFamily: "poppinsSemi"),),
                    Icon(Icons.arrow_forward_ios,size: 16,)
                  ],
                ),
              )
            ),
            SizedBox(height: 10,),
            Container(
              height: height/12,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)

              ),
              child:
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assests/bhim.png",),
                    Text("Bhim",style: TextStyle(fontFamily: "poppinsSemi"),),
                    Icon(Icons.arrow_forward_ios,size: 16,)
                  ],
                ),
              )
            ),

          ],
        ),
      ),
    );
  }
}
