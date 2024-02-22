import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  const NumberText({
    super.key,
    required this.numberText,
  });

  final String numberText;

  @override
  Widget build(BuildContext context) {
    return Text(
      numberText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
