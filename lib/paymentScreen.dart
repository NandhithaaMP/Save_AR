import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.clear,color: Colors.black,),
        actions: [
          Image.asset("assests/warning.png",scale: 3,),
          SizedBox(width: 10,),
          Icon(Icons.more_vert,color: Colors.black,),
          SizedBox(width: 10,)
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(height: 20,),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assests/asif.png"),
              radius: 80,

            ),
          ),
          SizedBox(height: 20,),
          Text("Date Challenge",style: TextStyle(fontFamily: "poppinsSemi",fontWeight: FontWeight.w500,fontSize: 15),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assests/success.png",),
              Text("Banking name : Fedaral Bank",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w400),),

              
            ],
          ),
          SizedBox(height: 20,),
          Text("Fundcollection@sbl",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w400,fontSize: 13),),
          SizedBox(height: 30,),
          Text("₹ 7000",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 38)),
          SizedBox(height: 30,),

          Container(
            height:height/10 ,
            width: width/1.5,
            decoration: BoxDecoration(
              color: Color(0xffE5E5E5),
              borderRadius: BorderRadius.circular(15)
            ),
            child:
            Center(child: Text("tx 1298857929403659",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w400,fontSize: 15),)),

          )
        ],
      ),
    );
  }
}
