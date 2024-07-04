import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:testnewproject/constant/constantWidget.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    List<String> state=[
      "Kerala",
      "Kerala",
      "Kerala",
      "Kerala",
      "Kerala",
      "Kerala",
      "Kerala",
      "Kerala",

    ];
    List<String> dist=[
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
    ];
    List<String> assembly=[

      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
      "Kozhikode",
    ];
    List<String > amount=[
      "37,000",
      "37,000",
      "37,000",
      "37,000",
      "37,000",
      "37,000",
      "37,000",
      "37,000",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Report",style: TextStyle(fontFamily: "poppinsSemi",fontSize: 15,fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(height: height/14,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey), // Set border color to grey
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey), // Set enabled border color to grey
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey), // Set focused border color to grey
                    ),
                    hintText: "Select State",
                    hintStyle: TextStyle(
                      fontFamily: "poppinsRegular",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey, // Set hint text color to grey
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.grey, // Set input text color to grey
                  ),
                ),
              ),

              SizedBox(height: 5,),
              Container(height: height/14,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey), // Set border color to grey
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey), // Set enabled border color to grey
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey), // Set focused border color to grey
                    ),
                    hintText: "Select District",
                    hintStyle: TextStyle(
                      fontFamily: "poppinsRegular",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey, // Set hint text color to grey
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.grey, // Set input text color to grey
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(height: height/14,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey), // Set border color to grey
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey), // Set enabled border color to grey
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey), // Set focused border color to grey
                    ),
                    hintText: "Select Assembly",
                    hintStyle: TextStyle(
                      fontFamily: "poppinsRegular",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey, // Set hint text color to grey
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.grey, // Set input text color to grey
                  ),
                ),
              ),




              SizedBox(height: 10,),
              Container(
                height:height/11 ,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage("assests/vectorimage2.png"),fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(ctorange.withOpacity(1), BlendMode.multiply)
                  ),
                  color: ctorange,
                ),
                child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Collected :",style: TextStyle(fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                    Text("₹ 1,163,575",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
                  ],
                ),
        
              ),
              // Card(
              //   color: Colors.yellow,
              //   child: Column(
              //     children: [
              //       ListTile(
              //         title: Text("Nandhitha"),
              //       )
              //     ],
              //   ),
              // )
              SizedBox(height: 10,),
              ListView.builder(
                itemCount: state.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                          ),

                            border: Border(

                              bottom: BorderSide(
                                color: Color(0xff434343),
                                width: 1
                              ),

                            )

                        ),
                        child: ListTile(
                              title: Text(state[index],
                                style: TextStyle(color: ctorange,fontFamily: "poppinsRegular",fontWeight: FontWeight.w600,fontSize: 14),),
                          subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(dist[index],style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,fontFamily: "poppinsRegular"),),
                                  Text(amount[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color:ctorange,fontFamily: "poppinsRegular"),),
                                ],
                              ),
                              Text(assembly[index],style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,fontFamily: "poppinsRegular"),),
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
