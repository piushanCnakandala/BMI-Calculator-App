import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';


enum Gender { male, female, other }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.other;
  int height = 180;
  int weight = 60;
  int age =18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(() {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                      selectedGender == Gender.male
                          ? kActiveCardColour
                          : kInActiveCardColour,
                      IconContent(FontAwesomeIcons.mars, 'MALE')),
                ),
                Expanded(
                    child: ReusableCard(() {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                        selectedGender == Gender.female
                            ? kActiveCardColour
                            : kInActiveCardColour,
                        IconContent(FontAwesomeIcons.venus, 'FEMALE'))),
              ],
            )),
            Expanded(
                child: ReusableCard(() {
            },
                    kActiveCardColour,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ))),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(() {
                    },
                        kActiveCardColour,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(FontAwesomeIcons.minus, () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(FontAwesomeIcons.plus, () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                              ],
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    child: ReusableCard(() {
                    },
                        kActiveCardColour,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(FontAwesomeIcons.minus, () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(FontAwesomeIcons.plus, () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                              ],
                            ),
                          ],
                        )),
                  ),

                ],
              ),
            ),
            BottomButton(
                (){
                  CalculatorBrain calc =CalculatorBrain(height, weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>ResultsPage(
                    calc.calculatrBMI(),
                    calc.getResult(),
                    calc.getInterpretation(),
                  )));
                },
               'CALCULATE'
            ),
          ],
        ));
  }
}


/*
class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF1D1E33),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF1D1E33),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                  ],
                )),
            Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                )),
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF1D1E33),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF1D1E33),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                  ],
                )),
          ],
        ));
  }
}
*/
