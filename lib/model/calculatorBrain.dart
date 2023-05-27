import 'dart:math';

class bmiBrain {
  final height;
  final weight;
  bmiBrain({this.height, this.weight});

  late double _BMI;

  String calculateBmi() {
    var m = height / 100;
    var x = m * m;
    _BMI = weight / x;
    return _BMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_BMI >= 25) {
      return "overweight";
    } else if (_BMI > 18.5) {
      return "normal";
    } else {
      return "under-weight";
    }
    ;
  }

  String getInterpretations() {
    if (_BMI >= 25) {
      return "you have a very high BMI, try to exercise ";
    } else if (_BMI >= 18.5) {
      return "you have a normal body weight 'Good Job ' ";
    } else {
      return "try and eat more ";
    }
    ;
  }
}
