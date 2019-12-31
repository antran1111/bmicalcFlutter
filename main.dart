import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090B22),
        scaffoldBackgroundColor: Color(0xFF090B22),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: Row(children: <Widget>[
            Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
            Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
          ])),
          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
          Expanded(
              child: Row(children: <Widget>[
            Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
            Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
          ])),
        ]));
  }
}

/*
 Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          //add in color, image, border raidus
          color: Color(0xFF1D1E33), //put color inside boxdecoration.
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 200.0,
        width: 170.0,
      ),
 */

class ReusableCard extends StatelessWidget {
  //can create your own constructor and change the color here
  ReusableCard(
      {@required
          this.colour}); //the required keyword makes the property required whenever you create this
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        //add in color, image, border raidus
        color: Color(0xFF1D1E33), //put color inside boxdecoration.
        borderRadius: BorderRadius.circular(10.0),
      ),
      // height: 200.0,
      //  width: 170.0,
    );
  }
}
