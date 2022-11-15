// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xAB7E8EFA),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/login.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(140),
                      left: Radius.circular(0),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: TextStyle(color: Colors.white),
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(
                        Icons.alternate_email_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    icon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'HomePage');
                },
                child: Container(
                  height: 40,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xAF1657FF),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 4,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  children: const [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Register Now',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Choose your operating system',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/play.jpg'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/android.jpg'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/apple.jpg'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
