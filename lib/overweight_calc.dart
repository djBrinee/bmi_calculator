import 'package:flutter/material.dart';

class Overweight_Calculator {
  String calculateOverWeight(double bmi_result) {
    if (bmi_result >= 40) {
      return "Severe Obesity";
    } else if (bmi_result >= 30) {
      return "Obesity";
    } else if (bmi_result >= 25) {
      return "Overweight";
    } else if (bmi_result >= 18.5) {
      return "Healthy weight";
    } else {
      return "Underweight";
    }
  }

  TextStyle weightMessageStyle(String message) {
    switch (message) {
      case "Severe Obesity":
        return TextStyle(
          fontSize: 30.0,
          color: const Color.fromARGB(255, 255, 17, 0),
        );
      case "Obesity":
        return TextStyle(
          fontSize: 30.0,
          color: Color.fromARGB(255, 223, 83, 83),
        );
      case "Overweight":
        return TextStyle(
          fontSize: 30.0,
          color: Color.fromARGB(255, 242, 246, 33),
        );
      case "Healthy weight":
        return TextStyle(
          fontSize: 30.0,
          color: Color.fromARGB(255, 11, 148, 4),
        );
      default:
        return TextStyle(
          fontSize: 30.0,
          color: Color.fromARGB(255, 255, 2, 2),
        );
    }
  }
}
