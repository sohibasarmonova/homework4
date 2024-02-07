import 'package:flutter/material.dart';
import 'package:uzum_market/pages/Home_page.dart';
import 'package:uzum_market/pages/login_page.dart';
import 'package:uzum_market/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        HomePage.id: (context) => HomePage(),
        SignUpPage.id: (context) => SignUpPage(),
        LoginPage.id: (context) => LoginPage(),
      },
      home: SignUpPage(),
    );
  }
}


