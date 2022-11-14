// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Container(
                  height: 110,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'images/login.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 40,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          onTap: () {},
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key),
                            labelText: 'Email Address',
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 10, 20, 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        height: 40,
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          onTap: () {},
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            labelText: 'Enter Password',
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 10, 20, 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        height: 40,
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          onTap: () {},
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            labelText: 'Confirm Password',
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 10, 20, 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'HomePage');
                        },
                        child: Container(
                          height: 40,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 65, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
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
                      const Text('Choose your operating system'),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
