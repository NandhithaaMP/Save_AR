import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testnewproject/constant/constantWidget.dart';

class TopReports extends StatelessWidget {
  const TopReports({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    final String medal="assests/medals/medal.png";
    List<String> place=[
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
    List<String> amount=[
      "4,35,85,146",
      "4,35,85,146",
      "4,35,85,146",
      "4,35,85,146",
      "4,35,85,146",
      "4,35,85,146",
      "4,35,85,146",
      "4,35,85,146",
      "4,35,85,146",
      "4,35,85,146",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Top Reports",style: TextStyle(fontFamily: "poppinsSemi",fontSize: 15,fontWeight: FontWeight.w500),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: height/15,
                    width: width/3.5,
                    decoration: BoxDecoration(
                      color: ctorange,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text(
                        "Assembly",style: TextStyle(fontFamily: "poppinsSemi",fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: height/15,
                    width: width/2.5,
                    decoration: BoxDecoration(
                        // color: ctorange,
                        borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: cstgrey)
                    ),
                    child: Center(
                      child: Text(
                        "Top Panjayath",style: TextStyle(fontFamily: "poppinsSemi",fontWeight: FontWeight.w600,fontSize: 15, color: ctorange,),
                      ),
                    ),
                  ),
        
                ],
              ),
              ListView.builder(
                  itemCount: place.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder:(context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5,),
                      height: height/8,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ctorange,
                        image: DecorationImage(
                          image: AssetImage("assests/vectorimage.png"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              ctorange.withOpacity(1),
                              BlendMode.multiply,
                          ),
                        ),
        
                      ),
                      child: ListTile(
                        leading: Stack(
                            alignment: Alignment.topLeft,
                            children:[
                              Image.asset(medal,height: 100,width: 50,),
                              Positioned(
                                left: 22,
                                top: 15,
                                child:
                                Text('${index+1}',style: TextStyle(color: Colors.white),),
                              )
                            ]
                        ),
                        title: Center(child: Text(place[index],style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w700,fontSize: 15),)),
                        trailing: Text(amount[index],style: TextStyle(color: Colors.white,fontFamily: "poppinsRegular",fontWeight: FontWeight.w700,fontSize: 15),),
                      ),
                    );
        
                  }
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
