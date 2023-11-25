import 'package:first_project/pages/Routes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
bool changeButton = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade700,
        centerTitle: true,
        title: Text("AirDrive" ,  style: GoogleFonts.alegreyaSans(
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.bold),

        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CarouselSlider(
              items: <Widget>[
                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child : Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              'Accept a job',
                              style: GoogleFonts.manrope(fontSize: 30,fontWeight: FontWeight.normal, color: Colors.black ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            '"Seize your next career milestone with confidence."',
                            style: GoogleFonts.manrope(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 200.0,
                      ),
                     Image.asset('assets/taxi.png' , fit: BoxFit.cover,),
                      SizedBox(height: 60),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, MyRoutes.welcomeRoute);
                        },
                        child: Container(
                          width: 220,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text('Get Started' , style: TextStyle(color: Colors.black , fontSize: 18 ,fontWeight: FontWeight.bold),
                          ),

                          decoration:BoxDecoration(
                              color: Colors.yellow.shade700,
                              borderRadius: BorderRadius.circular(23)

                          ),
                        ),
                      ),
                      SizedBox(height: 350),


                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child : Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              'Realtime Tracking',
                              style: GoogleFonts.manrope(fontSize: 30, fontWeight:FontWeight.normal, color: Colors.black ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            '"Navigate success in real-time with our AirDrive"',
                            style: GoogleFonts.manrope(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                        ),

                      ),
                      Image.asset('assets/map.png' , width: 700, height: 400, ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, MyRoutes.welcomeRoute);
                        },
                        child: Container(
                          width: 220,
                          height: 50,

                          alignment: Alignment.center,
                          child: Text('Get Started' , style: TextStyle(color: Colors.black , fontSize: 18 ,fontWeight: FontWeight.bold),
                          ),
                          decoration:BoxDecoration(
                              color: Colors.yellow.shade700,
                              borderRadius: BorderRadius.circular(23)
                          ),
                        ),
                      ),
                      SizedBox(height: 350),

                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child : Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              'Earn Money',
                              style: GoogleFonts.manrope(fontSize: 30, color: Colors.black ),
                            ),

                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child:
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              '"Drive your career forward with AirDrive"',
                              style: GoogleFonts.manrope(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
                            ),
                          ),

                      ),
                      SizedBox(height: 100),
                      Image.asset('assets/man.png'  , width: 290, height: 250, ),
                      SizedBox(height: 50),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, MyRoutes.welcomeRoute);
                        },
                        child: Container(
                          width: 220,
                          height: 50,

                          alignment: Alignment.center,
                          child: Text('Get Started' , style: TextStyle(color: Colors.black , fontSize: 18 ,fontWeight: FontWeight.bold),
                          ),
                          decoration:BoxDecoration(
                              color: Colors.yellow.shade700,
                            borderRadius: BorderRadius.circular(23)
                          ),
                        ),
                      ),
                      SizedBox(height: 350),



                    ],
                  ),
                )
              ],

                      options: CarouselOptions(
                      height: 950.0,
                        aspectRatio: 900.0,
                        viewportFraction: 1.0,
                       enlargeCenterPage: true,
                ),

            ),
          ),

            ),
      ),
    );
  }
}
