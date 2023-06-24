import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);
const inActiveCardColour = Color(0xFF111328);

enum Gender {
  male,
  female,
  other
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

     Gender selectedGender = Gender.other;

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
                    child: ReusableCard(
                        (){
                          setState(() {
                            selectedGender =Gender.male;
                          });
                        },
                        selectedGender ==Gender.male ? activeCardColour : inActiveCardColour,
                    IconContent(FontAwesomeIcons.mars,'MALE')),),
             Expanded(child: ReusableCard(
                 (){
                   setState(() {
                     selectedGender =Gender.female;
                   });
                 },
                 selectedGender ==Gender.female ? activeCardColour : inActiveCardColour,
                 IconContent(FontAwesomeIcons.venus,'FEMALE'))),
              ],
            )),
         /*   Expanded(child: ReusableCard(activeCardColour)),*/
            Expanded(
                child: Row(
              children: <Widget>[
               /* Expanded(child: ReusableCard(activeCardColour)),
                Expanded(child: ReusableCard(activeCardColour)),*/
              ],
            )),
            Container(
              color: bottomContainerColour,
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
