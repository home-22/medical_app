// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BottonPatient extends StatelessWidget {
  const BottonPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'DrDoctorPage');
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10, left: 10),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.lightBlue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.done,
              size: 29,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Patient visited',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
