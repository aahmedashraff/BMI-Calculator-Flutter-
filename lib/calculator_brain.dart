import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final int height;
  final int weight;
  double _bmi;
  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'لا كتير ياعم خس شوية بالله عليك مينفعش كدة';
    } else if (_bmi < 18.5) {
      return 'زي الفل متاكلش كحك وبسكويت علشان متبوظش الدنيا';
    } else {
      return 'قوم اضربلك طبق محشي وصنية مكرونة بشاميل رُم بيهم عضمك ';
    }
  }
}
