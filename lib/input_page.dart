import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female, other }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.other;
  int height = 180;

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
              setState(() {
                selectedGender = Gender.male;
              });
            },
                    kInActiveCardColour,
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
                        Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ],
                    ))),
            Expanded(
                child: Row(
              children: <Widget>[
                /* Expanded(child: ReusableCard(activeCardColour)),
                Expanded(child: ReusableCard(activeCardColour)),*/
              ],
            )),
            Container(
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            )
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
