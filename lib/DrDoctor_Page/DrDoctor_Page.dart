// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical_app/DrDoctor_Page/widgets/List_Vaccine.dart';

class DrDoctorPage extends StatelessWidget {
  const DrDoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Container(
                        margin: const EdgeInsets.all(0),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[50]),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black54,
                            size: 30,
                          ),
                        )),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('images/2.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(0),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: const Icon(
                        Icons.domain_verification,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: const [
                  Text(
                    'Dr.Hanna Fiegel',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Therapist, virologist',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const ListVaccine()
            ],
          ),
        ),
      ),
    );
  }
}
