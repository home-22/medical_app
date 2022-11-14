// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeGridItems extends StatelessWidget {
  const HomeGridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.78,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        //   for (int i = 1; i < 5; i++)
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'DoctorEditPage');
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'VACCINE \nDT(GENERIC)',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '9:30',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Dr.Hanna Fiegel',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'VACCINE \nTDAP(ADACEL)',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '11:40',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Dr.Orane',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'VACCINE \nPSV23(PNEUMO)',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '12:15',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Dr.Smith',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'VACCINE \nRV1(ROTARIX)',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '12:45',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Dr.Tempsni',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
