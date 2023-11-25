import 'package:first_project/pages/Routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.yellow.shade700,
          centerTitle: true,
          title: Text("AirDrive" ,  style: GoogleFonts.alegreyaSans(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold),


          ),
        ),
         body: SingleChildScrollView(
         child: Center(
           child: Column(
             children: [
               SizedBox(height: 100),
               Image.asset("assets/Welcome.png" , fit: BoxFit.cover,),
               Text("Welcome", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
               SizedBox(height: 12),
               Text("Have a better sharing experience", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal),),
               SizedBox(height: 120),
               InkWell(
                 onTap: (){
                   Navigator.pushNamed(context, MyRoutes.thanksRoute);
                 },
                 child: Container(
                   width: 300,
                   height: 50,
                   alignment: Alignment.center ,
                   child: Text('Create An Account', style: TextStyle(color: Colors.black, fontSize: 18 , fontWeight: FontWeight.normal) ,  ),
                   decoration: BoxDecoration(
                     color: Colors.yellow.shade700,
                     borderRadius: BorderRadius.circular(8),
                   ) ,

                 ),
               ),
               SizedBox(height: 10),
               InkWell(
                 onTap: (){
                   Navigator.pushNamed(context, MyRoutes.thanksRoute);
                 },
                 child: Container(
                   width: 300,
                   height: 50,
                   alignment: Alignment.center ,
                   child: Text('Login', style: TextStyle(color: Colors.black, fontSize: 18 , fontWeight: FontWeight.normal) ,  ),
                   decoration: BoxDecoration(
                     color: Colors.yellow.shade700,
                       borderRadius: BorderRadius.circular(8),
                   ) ,

                 ),
               ),
               SizedBox(height: 40),
             ],
           ),
         ),
         ),
      );

  }
}
