import 'package:flutter/material.dart';
import 'package:medical_app/Doctor_Edit_Page/Doctor_Edit_Page.dart';
import 'package:medical_app/DrDoctor_Page/DrDoctor_Page.dart';
import 'package:medical_app/Home_Page/Home_Page.dart';
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
        'DoctorEditPage': (context) => const DoctorEditPage(),
        'DrDoctorPage': (context) => const DrDoctorPage(),
      },
    );
  }
}
