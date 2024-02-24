import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();

  static const Map<String, String> resultTexts = {
    'Normal': 'This is good',
    'Overweight': 'You are not good',
    'Underweight': 'You are not good',
  };

  static const Map<String, Color> resultColors = {
    'Normal': Colors.green,
    'Overweight': Colors.red,
    'Underweight': Colors.amber,
  };
}
