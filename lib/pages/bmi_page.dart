import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/calculate_button.dart';
import '../widgets/gender_view.dart';
import '../widgets/global_app_bar.dart';
import '../widgets/height_box.dart';
import '../widgets/weight_and_age_view.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0e21),
      appBar: const GlobalAppBar(title: 'BMI CALCULATOR'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const GenderView(),
              const SizedBox(height: 16),
              HeightBox(
                height: height,
                onSlide: (v) => setState(
                  () => height = v,
                ),
              ),
              const SizedBox(height: 16),
              const WeightAndAgeView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CalculateButton(
        text: 'CALCULATE',
        onCalculate: () {
          log('Height: $height');
        },
      ),
    );
  }
}
