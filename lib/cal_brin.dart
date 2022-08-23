import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.cHeight, this.cWeight});
  final cHeight;
  final cWeight;
  double _bmi;
  String calculateBMI() {
    _bmi = (cWeight / pow(cHeight / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal weight. You can eat a bit more.';
    }
  }
}
