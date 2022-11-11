import 'package:flutter/material.dart';
import 'package:medical_app/Home_Page.dart';

import 'package:medical_app/Login_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardColor: const Color(0xFF1657FF),
      ),
      routes: {
        '/': (context) => const LoginPage(),
        'HomePage': (context) => const HomePage(),
      },
    );
  }
}
