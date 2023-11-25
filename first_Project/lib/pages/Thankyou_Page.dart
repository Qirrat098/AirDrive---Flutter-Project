import 'package:first_project/pages/Routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThankyouPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade700,
        centerTitle: true,
        title: Text( "AirDrive" ,   style: GoogleFonts.alegreyaSans(
        fontSize: 25, color: Colors.black,
        fontWeight: FontWeight.bold),

      ),
        automaticallyImplyLeading: true,
        leading: IconButton( color: Colors.black, icon: Icon(Icons.arrow_back_ios),
        onPressed:()  =>  Navigator.pop(context),

        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: Container(
                    height: 500,
                    width: 500,
                    child: Image.asset("assets/Check.png"),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Thank You! We get back to you soon', textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
