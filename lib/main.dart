import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconsTextFIle.dart';
import 'RepeatContainerFile.dart';
import 'constantfile.dart';
import 'resultFile.dart';
import 'calculatorFile.dart';
enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectgender;
  int sliderheight=180;
  int genderWeight=60;
  int genderAge=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(

                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectgender=Gender.male;
                    });
                  },
                  colors: selectgender==Gender.male?activeColor:deactiveColor,
                  cardWidget: RepeatCardWidget(
                    iconData: FontAwesomeIcons.male,
                    label: 'MALE',
                  ),
                ),

              ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectgender=Gender.female;
                    });
                  },
                  colors: selectgender==Gender.female?activeColor:deactiveColor,
                  cardWidget: RepeatCardWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'FEMALE',
                  ),),
              )
            ],
          )),
          Expanded(child: new RepeatContainerCode(
            colors: Color(0xFF1D1E33),
            cardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HEIGHT',style: klablestyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(sliderheight.toString(),
                      style: knumberstyle,),
                    Text('cm',style: klablestyle,)

                  ],
                ),
                Slider(
                  value: sliderheight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue){
                    setState(() {
                      sliderheight=newValue.round();
                    });
                  },
                ),
              ],
            ),
          )),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: new RepeatContainerCode(
                colors: Color(0xFF1D1E33),
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('WEIGHT',style: klablestyle,),
                    Text(genderWeight.toString(),style: knumberstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIcon(
                          iconData: FontAwesomeIcons.minus,
                          onPress: (){
                            setState(() {
                              genderWeight--;
                            });
                          },
                        ),
                        SizedBox(width: 10.0),
                        RoundIcon(
                          iconData: FontAwesomeIcons.plus,
                          onPress: (){
                            setState(() {
                              genderWeight++;
                            });
                          },

                        )


                      ],
                    )
                  ],
                ),
              )),
              Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('AGE',style: klablestyle,),
                    Text(genderAge.toString(),style: knumberstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIcon(
                          iconData: FontAwesomeIcons.minus,
                          onPress: (){
                            setState(() {
                              genderAge--;
                            });
                          },
                        ),
                        SizedBox(width: 10.0),
                        RoundIcon(
                          iconData: FontAwesomeIcons.plus,
                          onPress: (){
                            setState(() {
                              genderAge++;
                            });
                          },

                        )


                      ],
                    )
                  ],
                ),)),

            ],
          )),
          GestureDetector(
            onTap: (){
              CalculatorBrain cal=CalculatorBrain(height: sliderheight,weight: genderWeight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(
                bmiResult: cal.calculateBMI(),
                resultText:cal.getResult() ,
                interperation: cal.getInterperation(),
              )));
            },
            child: Container(
              child: Center(child: Text('Calculate',style: klargeButtonstyle,)),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top:10.0),
              width: double.infinity,
              height: 80.0,
            ),
          )
        ],

      ),
    );
  }
}


class RoundIcon extends StatelessWidget {
  RoundIcon({@required this.iconData,this.onPress,});
  final IconData iconData;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),


    );
  }
}
