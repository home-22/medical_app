// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/login.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onTap: () {},
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'Enter UserName',
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  onTap: () {},
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    labelText: 'Enter Password',
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  onTap: () {},
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    labelText: 'Confirm Password',
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign In'),
                ),
              ),
              InkWell(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Create new account'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: ClipRRect(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(
                          child: Image.asset(
                            'images/play.jpg',
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Image.asset(
                          'images/android.jpg',
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        child: Image.asset(
                          'images/apple.jpg',
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
