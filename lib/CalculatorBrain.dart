import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

   double _bmi=0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResultCompliment() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getSuggestion() {
    if (_bmi >= 25)
      return 'You have higher than a normal body weight. Exercise more.';
    else if (_bmi > 18.5)
      return 'You have normal body weight. Good Job!';
    else
      return 'You have lower than a normal body weight. Eat more';
  }
}
