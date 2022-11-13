// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeAppBar extends StatelessWidget {
  List<Text> nameText = [
    const Text(
      'Dr.Heax',
      style: TextStyle(fontSize: 12, color: Colors.white),
    ),
    const Text(
      'Dr.Reisen',
      style: TextStyle(fontSize: 12, color: Colors.white),
    ),
    const Text(
      'Dr.Fiegel ',
      style: TextStyle(fontSize: 12, color: Colors.white),
    ),
    const Text(
      'Dr.Orane',
      style: TextStyle(fontSize: 12, color: Colors.white),
    ),
    const Text(
      'Dr.Smith',
      style: TextStyle(fontSize: 12, color: Colors.white),
    ),
    const Text(
      'Dr.Hanna',
      style: TextStyle(fontSize: 12, color: Colors.white),
    ),
    const Text(
      'Dr.Tempsni',
      style: TextStyle(fontSize: 12, color: Colors.white),
    )
  ];

  HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              for (int i = 1; i < 7; i++)
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(7),
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/$i.jpg')),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 0,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 1; i < 7; i++)
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  child: nameText[i],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
