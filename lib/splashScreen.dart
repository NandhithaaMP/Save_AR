import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget { 
  
  
  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
     body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [         
         Text("Join hands to wipe away this mother's tears",style: TextStyle(color: Colors.blue,
         fontSize: 30),),
         // Image(image: AssetImage("assests/splash/logo.png",),),
            Image.asset("assests/splash/logo.png",scale: 1,),
         Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset("assests/splash/Spine Logo 1.png"),
             Image.asset("assests/splash/Nbots.png")
           ],
         ),
       ],
     ),
   );
  }
}
