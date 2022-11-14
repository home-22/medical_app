// ignore_for_file: file_names

import 'package:flutter/material.dart';

class VaccineTDAP extends StatelessWidget {
  const VaccineTDAP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.lightBlue),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '  VACCINE',
                    style: TextStyle(color: Colors.white54, fontSize: 13),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.playlist_add_check_circle_sharp,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                'TDAP(ADACEL)',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Bradly Lews',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '12:15',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Third time in clinic',
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text(
                    'Septembar 22',
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
