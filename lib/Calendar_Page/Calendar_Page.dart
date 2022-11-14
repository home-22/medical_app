// ignore_for_file: file_names

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Calendar_Page/widgets/Calendar_Card.dart';
import 'package:medical_app/Home_Page/widgets/Hbottom_NavBar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Schedule',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  color: Colors.white),
                            ],
                            color: Colors.lightBlue),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  children: [
                    DatePicker(
                      DateTime.now(),
                      selectionColor: Colors.white38,
                      selectedTextColor: Colors.white,
                    ),
                    const CalendarCard(),
                    const CalendarCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HbottomNavBar(),
    );
  }
}
