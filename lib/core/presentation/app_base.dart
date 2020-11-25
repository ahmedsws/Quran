import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/core/presentation/start_page/start_page.dart';
import 'package:quran/home/presentation/pages/home_page.dart';

class AppBase extends StatelessWidget {
  const AppBase();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColor: Color(0xFF672CBC),
        accentColor: Color(0xFF8789A3),
      ),
      home: StartPage(),
    );
  }
}
