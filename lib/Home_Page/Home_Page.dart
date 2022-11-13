// ignore_for_file: file_names

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Home_Page/widgets/Home_AppBar.dart';
import 'package:medical_app/Home_Page/widgets/Home_Grid_Items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.grey,
                child: Row(
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      child: Text(
                        'You have 12 \nappointments \ntoday',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 15, bottom: 60),
                      child: InkWell(
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HomeAppBar(),
              const HomeGridItems(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.people, title: 'People'),
          TabItem(icon: Icons.note_alt, title: 'Notes'),
        ],
      ),
    );
  }
}
