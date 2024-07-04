import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testnewproject/constant/constantWidget.dart';

class PosterScreen extends StatelessWidget {
  const PosterScreen({super.key});

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
            SizedBox(height: height/6.3,),
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
                    Icon(Icons.file_upload_outlined,color: Colors.white,),
                    Text("Upload Photo",style: TextStyle(color: Colors.white,fontFamily: "poppinsSemi",fontSize: 14,fontWeight: FontWeight.w700),)
                  ],
                )
              // Text("Upload Photo"),
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
                    Text("Share",style: TextStyle(color: Colors.white,fontFamily: "poppinsSemi",fontSize: 14,fontWeight: FontWeight.w700),)
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
