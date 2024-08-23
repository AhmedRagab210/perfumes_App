import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perfumes_store/screens/onbording_screen.dart';


void main(){
  runApp(const MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.aboreto().fontFamily,
      
      
      
      ),
      home: const OnbordingScreen(),
    );
  
}
}


