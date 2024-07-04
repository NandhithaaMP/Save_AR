import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testnewproject/constant/constantWidget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    List<String> name=["Muhammed Asif ","Muhammed Asif ","Muhammed Asif ","Muhammed Asif ","Muhammed Asif "];
    List<String> assembly=["Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode",];
    List<String> date=["16-01-2024","16-01-2024","16-01-2024","16-01-2024","16-01-2024"];
    List<String> district=["Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode",];
    return Scaffold(
      appBar: AppBar(
        title: Text("Participate Now",style: TextStyle(fontFamily: "poppinsRegular"),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
          
            children: [
            Container(
              height: 50,

              child: TextFormField(

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(


                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Color(0xffE6E6E6),

                      width: 1,
                    ),


                  ),
                    label:
                    Center(
                        child:
                        Text("Transaction id",style: TextStyle(fontFamily: "poppinsRegular",color: Colors.grey,fontSize: 15),)
                    ),
                    suffixIcon:Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.search,color: ctorange,),
                    )

                ),
              ),
            ),
              SizedBox(height: 10,),
              ListView.builder(
                physics: ScrollPhysics(),
                itemCount: name.length,
                  shrinkWrap: true,
                  itemBuilder:(context, index) {
                    return Container(
                       margin: EdgeInsets.symmetric(vertical: 4),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color(0xffE6E6E6)
                        )
                        // border: Border.symmetric(horizontal: BorderSide(color: Colors.grey,),)
                      ),
                        child: ListTile(
                            title: Column(crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Row(
                                  children: [
                                    Text("Name:",style: TextStyle(),),
                                    Text(name[index].toString(),style: TextStyle(color: ctorange,fontWeight: FontWeight.w700),)
                                  ],
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Assembly:"),
                                        Text(assembly[index],style: TextStyle(fontWeight: FontWeight.w700,fontFamily: "poppinsRegular",fontSize: 15),)
                                      ],
                                    ),
                                    Text("₹ 7000",style: TextStyle(color: ctorange,fontWeight: FontWeight.w700),)
                                  ],
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Date:"),
                                        Text(date[index],style: TextStyle(fontWeight: FontWeight.w700,fontFamily: "poppinsRegular",fontSize: 15))
                                      ],
                                    ),
                                    Text("08.27 AM",style: TextStyle(fontSize: 8),)
                                  ],
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("District:"),
                                        Text(district[index],style: TextStyle(fontWeight: FontWeight.w700,fontFamily: "poppinsRegular",fontSize: 15),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("assests/success.png",scale: 1,),
                                        SizedBox(width: 10,),
                                        Text("SUCCESS",style: TextStyle(fontWeight: FontWeight.w600,color: ctgreen),)
                                      ],
                                    ),


                                  ],

                                ),
                                SizedBox(height: 10,),
                                Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: height/18,
                                    width: width/3,
                                   decoration: BoxDecoration(
                                     color: ctorange,
                                      borderRadius: BorderRadius.circular(20),
                                   ),
                                      child: Center(child: Text("Map Volunteer",style: TextStyle(color: Colors.white,fontFamily: "poppinsSemi",fontSize: 11,fontWeight: FontWeight.w500),)),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      height: height/18,
                                      width: width/2.5,
                                     decoration: BoxDecoration(
                                       color:  ctorange,
                                       borderRadius: BorderRadius.circular(20),

                                     ),
                                      child: Center(child: Text("Change Assembly",style: TextStyle(fontFamily: "poppinsSemi",color: Colors.white,fontSize: 11,fontWeight: FontWeight.w500),)),
                                    ),
                                  ],

                                )
                              ],

                            ),


                        ),


                    );
                  },

              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
