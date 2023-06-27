import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

enum Gender { male, female, other }

class ResultsPage extends StatelessWidget {

  Gender selectedGender = Gender.other;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  ),
                ),
              ),),
          Expanded(
            flex: 5,
              child: ReusableCard(() {
              },
                kActiveCardColour,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                    Text(
                        '18.3',
                      style:kBMIIextStyle ,
                    ),
                    Text(
                      'Your BMI result is quite lox,you should eat more',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),),
          BottomButton(() {
            Navigator.pop(context);
          }, 'RE-CALCULATE')
        ],
      )
    );
  }
}
