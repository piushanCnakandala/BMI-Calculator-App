import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

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
                Expanded(child: ReusableCard(Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(Color(0xFF1D1E33))),
              ],
            )),
            Expanded(child: ReusableCard(Color(0xFF1D1E33))),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(Color(0xFF1D1E33))),
              ],
            )),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard(@required this.colour);
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color:colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
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