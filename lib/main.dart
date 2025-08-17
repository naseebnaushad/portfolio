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
      title: 'Profile App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.brown,
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
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                'Web programmer \n'
                'Developer \n'
                'Open Source Contributor',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
