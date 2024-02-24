import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../widgets/calculate_button.dart';
import '../widgets/card_box.dart';
import '../widgets/global_app_bar.dart';
import 'bmi_page.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({
    super.key,
    required this.result,
  });

  final double result;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late final isNormal = widget.result < 25 && widget.result >= 18;
  late final isUnderWeight = widget.result < 18;
  late final isOverWeight = widget.result >= 25;
  String? resultText;

  void getResult() {
    if (isNormal) {
      resultText = 'Normal';
    } else if (isUnderWeight) {
      resultText = 'Underweight';
    } else {
      resultText = 'Overweight';
    }
  }

  @override
  void initState() {
    getResult();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0e21),
      appBar: const GlobalAppBar(title: 'BMI CALCULATOR'),
      body: SizedBox(
        height: MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CardBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  resultText!,
                  style: TextStyle(
                    fontSize: 20,
                    color: AppConstants.resultColors[resultText],
                  ),
                ),
                Text(
                  widget.result.toStringAsFixed(1),
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
                Text(
                  AppConstants.resultTexts[resultText]!,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CalculateButton(
        text: 'RE-CALCULATE',
        onCalculate: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const BmiPage(),
          ),
        ),
      ),
    );
  }
}
