import 'package:flutter/material.dart';

import 'weight_and_age_box.dart';

class WeightAndAgeView extends StatelessWidget {
  const WeightAndAgeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WeightAndAgeBox(
          title: 'WEIGHT',
          number: 60,
          onIncrement: () {},
          onDecrement: () {},
        ),
        const SizedBox(width: 16),
        WeightAndAgeBox(
          title: 'AGE',
          number: 25,
          onIncrement: () {},
          onDecrement: () {},
        ),
      ],
    );
  }
}
