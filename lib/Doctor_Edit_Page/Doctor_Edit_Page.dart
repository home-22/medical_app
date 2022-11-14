// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical_app/Doctor_Edit_Page/widgets/Botton_Patient.dart';
import 'package:medical_app/Doctor_Edit_Page/widgets/Card_Vaccine.dart';

class DoctorEditPage extends StatelessWidget {
  const DoctorEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
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
                            fontSize: 35,
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
              Container(
                height: 520,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'Edit',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.close,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CardVaccine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Doctor',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, top: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        'images/2.jpg',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        children: const [
                                          Text(
                                            'Dr.Hanna Fiegel',
                                            style: TextStyle(
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'Theropist,virologist',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.lightBlue,
                                      size: 14,
                                    ),
                                    SizedBox(width: 10),
                                    Text('September 22,2022'),
                                    SizedBox(width: 15),
                                    Icon(
                                      Icons.access_time_sharp,
                                      color: Colors.blue,
                                      size: 14,
                                    ),
                                    SizedBox(width: 10),
                                    Text('9:30'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Patient',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 10,
                                        top: 10,
                                      ),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.grey[50],
                                            child: const Icon(Icons.person),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Column(
                                              children: const [
                                                Text(
                                                  'Stefania Keller',
                                                  style: TextStyle(
                                                      fontSize: 19,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Frist time in clinic',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const BottonPatient(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
