import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});
  int height;
  int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You Have A Higher Than Normal Body-Weight,Try to Exercize Daily';
    } else if (_bmi > 18.5) {
      return 'You have a Normal Body Weight !Good Job';
    } else {
      return 'You Have a lower Than normal Body Weight ! You Can Eat a Little Bit more';
    }
  }
}
