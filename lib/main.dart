import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI()
  {
    _bmi=weight/pow(height/100,2 );
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25)
    {
      return 'OverWeight';
    }
    else if(_bmi>18.5)
    {
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }

  String getInterperation(){
    if(_bmi>=25)
    {
      return 'You Have a heigher then normal weight. Try to exercise';
    }
    else if(_bmi>18.5)
    {
      return 'You have to normal body weight .Good Jobs!';
    }
    else{
      return 'You have a lower then normal body weight.You can eat foods and fresh fruits';
    }
  }

}