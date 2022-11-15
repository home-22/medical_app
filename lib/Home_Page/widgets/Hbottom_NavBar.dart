// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HbottomNavBar extends StatelessWidget {
  const HbottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 5,
            color: Colors.white38,
          ),
        ],
        color: Colors.lightBlue,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'HomePage');
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 5,
                        color: Colors.white,
                      ),
                    ],
                    color: Colors.lightBlue),
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, 'DoctorEditPage');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 5,
                          color: Colors.white,
                        ),
                      ],
                      color: Colors.lightBlue),
                  child: const Icon(
                    Icons.people_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'CalendarPage');
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 5,
                          color: Colors.white,
                        ),
                      ],
                      color: Colors.lightBlue),
                  child: const Icon(
                    Icons.domain_verification,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
