import 'package:bmi_calculator/RepeatContainerFile.dart';
import 'package:flutter/material.dart';
import 'constantfile.dart';
import 'input_page.dart';
import 'calculatorFile.dart';
class ResultScreen extends StatelessWidget {
  ResultScreen({@required this.bmiResult,this.resultText,this.interperation});
  final String bmiResult;
  final String resultText;
  final String interperation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text('Your Result',style: ktitleStyle,),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),style: kresultTextStyle,),
                  Text(bmiResult,style: kBMITextStyle,),
                  Text(interperation,style: kbodyTextStyle,),
                ],

              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
              },
              child: Container(
                child: Center(child: Text('ReCalculate',style: klargeButtonstyle,)),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top:10.0),
                width: double.infinity,
                height: 80.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}