import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prof',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          scrolledUnderElevation: 20,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              'My Profile',
              style: GoogleFonts.playfair(
                fontWeight: FontWeight.w600,
                fontSize: 35,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
                width: double.infinity,
                child: Image.asset("assets/profile/profile.jpeg", fit: BoxFit.fill,)),
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("assets/profile/profile.jpeg"),
                      // foregroundImage: AssetImage('assets/profile/pro.png'),
                      // child: Text(
                      //   'test text',
                      //   style: TextStyle(fontSize: 12, color: Colors.yellow),
                      // ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'I\'m Naseeb',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    textDirection: TextDirection.rtl,
                    'Developer \n'
                    'Flutter enthusiast \n'
                    'Open Source enthusiast',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
