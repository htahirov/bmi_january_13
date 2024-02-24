import 'dart:developer';

import 'package:flutter/material.dart';

import 'weight_and_age_box.dart';

class AgeBox extends StatefulWidget {
  const AgeBox({super.key});

  @override
  State<AgeBox> createState() => _AgeBoxState();
}

class _AgeBoxState extends State<AgeBox> {
  int age = 25;

  @override
  Widget build(BuildContext context) {
    log('Only age rebuilding...');
    return WeightAndAgeBox(
      title: 'AGE',
      number: age,
      onIncrement: () {
        age++;
        setState(() {});
      },
      onDecrement: () {
        age--;
        setState(() {});
      },
    );
  }
}
