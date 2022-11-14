// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical_app/DrDoctor_Page/widgets/Vaccine_DT.dart';
import 'package:medical_app/DrDoctor_Page/widgets/Vaccine_PSV23.dart';
import 'package:medical_app/DrDoctor_Page/widgets/Vaccine_RV1.dart';

import 'package:medical_app/DrDoctor_Page/widgets/Vaccine_TDAP.dart';

class ListVaccine extends StatelessWidget {
  const ListVaccine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        VaccineTDAP(),
        VaccineDT(),
        VaccinePSV23(),
        VaccineRV1(),
      ],
    );
  }
}
