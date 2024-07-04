import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant/constantWidget.dart';

class VolunteerPayments extends StatelessWidget {
  const VolunteerPayments({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    List<String> name=["Muhammed Asif ","Muhammed Asif ","Muhammed Asif ","Muhammed Asif ","Muhammed Asif "];
    List<String> volname=["Faisal","Faisal","Faisal","Faisal","Faisal"];
    List<String> assembly=["Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode",];
    List<String> date=["16-01-2024","16-01-2024","16-01-2024","16-01-2024","16-01-2024"];
    List<String> district=["Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode",];
    return Scaffold(
      appBar: AppBar(
        title: Text("Volunteer Payments",style: TextStyle(fontFamily: "poppinsSemi",fontSize: 15,fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                itemCount: name.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xffE6E6E6))
                      ),
                      child: ListTile(
                        title:
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("Name ",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w500,fontSize: 10),),

                                Text("    : "),
                                Text(name[index],style: TextStyle(fontFamily: "poppinsRegular",color: ctorange,fontSize: 12,fontWeight: FontWeight.w600),),
                              ],
                            ),

                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("District ",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w500,fontSize: 10),),
                                    Text("   :"),
                                    Text(district[index],style: TextStyle(fontFamily: "poppinsRegular",fontSize: 10,fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                Text("₹ 7000",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: ctorange),)
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("Assembly ",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w500,fontSize: 10),),
                                    Text(":"),
                                    Text(assembly[index],style: TextStyle(fontFamily: "poppinsRegular",fontSize: 10,fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                Text("08:27 AM",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w500,color: ctgrey),)
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("Date ",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w500,fontSize: 10),),
                                    Text("      : "),
                                    Text(date[index],style: TextStyle(fontFamily: "poppinsRegular",fontSize: 10,fontWeight: FontWeight.w600),)
                                  ],
                                ),



                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("Volunteer ",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w500,fontSize: 10),),
                                    Text(": "),
                                    Text(volname[index],style: TextStyle(fontFamily: "poppinsRegular",fontSize: 10,fontWeight: FontWeight.w600),)
                                  ],
                                ),



                              ],
                            ),

                          ],
                        ),

                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
