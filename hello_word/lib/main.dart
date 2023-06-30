import 'package:flutter/material.dart';
import 'package:hello_word/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_word/utils/Routes.dart';
import 'pages/home.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get dark => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.LoginRoute,
      routes: {
        MyRoutes.LoginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.LoginRoute: (context) => LoginPage(),
      },
    );
  } 
}
