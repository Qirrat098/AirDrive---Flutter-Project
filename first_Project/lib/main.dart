import 'package:first_project/pages/Routes.dart';
import 'package:first_project/pages/Thankyou_Page.dart';
import 'package:first_project/pages/home_page.dart';
import 'package:first_project/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.welcomeRoute: (context) => WelcomePage(),
        MyRoutes.thanksRoute: (context) => ThankyouPage(),

      },
      );
  }
}


