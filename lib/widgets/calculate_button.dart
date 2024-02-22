import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.text,
    required this.onCalculate,
  });

  final String text;
  final void Function() onCalculate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCalculate,
      child: Container(
        color: Colors.pink,
        width: MediaQuery.of(context).size.width,
        height: 74,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
