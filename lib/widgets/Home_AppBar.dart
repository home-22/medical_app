// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeAppBar extends StatelessWidget {
  List<Text> nameText = [
    const Text('Dr.Heax'),
    const Text('Dr.Reisen'),
    const Text('Dr.Fiegel '),
    const Text('Dr.Orane'),
    const Text('Dr.Smith'),
    const Text('Dr.Hanna'),
    const Text('Dr.Tempsonan')
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
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  width: 60,
                  height: 60,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                for (int i = 1; i < 7; i++)
                  Container(
                    height: 20,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: nameText[i],
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
