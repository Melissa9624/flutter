import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const consh = 80.0;
const activeColour = Colors.green;
const inactiveColour = Colors.yellow;
const butcolor = Color.fromARGB(255,103,11,11);
var maleCardColour = Color.fromARGB(255, 206, 233, 5);
var femaleCardColour = Color.fromARGB(255, 235, 5, 40);
var otroCardColour = Color.fromARGB(255, 32, 40, 146);

enum Gender{
  maybe,
  male,
  female,
  otro
}

class InputPage extends StatefulWidget {
@override
_InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
Gender selectedgender = Gender.maybe;
Color male = inactiveColour;
Color female = inactiveColour;
Color otro = inactiveColour;

void updateColour (Gender selectedGender){
  //male card pressed
  /*if(selectedGender == Gender.male){
    if (maleCardColour == inactiveColour){
      maleCardColour = activeColour;
      femaleCardColour = inactiveColour;
      otroCardColour = inactiveColour;
    } else {
      maleCardColour = inactiveColour;
    }
  }
  if(selectedGender == Gender.female){
    if (femaleCardColour == inactiveColour){
      femaleCardColour = activeColour;
      maleCardColour = inactiveColour;
      otroCardColour = inactiveColour;
    } else {
      femaleCardColour = inactiveColour;
    }
  }
  if(selectedGender == Gender.otro){
    if (femaleCardColour == inactiveColour){
      otroCardColour = activeColour;
      femaleCardColour = inactiveColour;
      maleCardColour = inactiveColour;
    } else {
      otroCardColour = inactiveColour;
    }
  }*/
}
@override

Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('BMI CALCULATOR'),
),
body: Column(
  children: <Widget>[
    Expanded(
      child: Row(
        children: <Widget>[

        Expanded(
        child: Reusable(
          onPress: (){
            setState(() {
              selectedgender = Gender.male;
            });
          },
          colour: selectedgender == Gender.male ? activeColour : inactiveColour,
          cardChild: ReusableIcon(icon: FontAwesomeIcons.faceLaugh, label:''),
     ),
        ),
         
      Expanded(
        child: Reusable(
          onPress: (){
            setState(() {
              selectedgender = Gender.female;
            });
          },
          colour: selectedgender == Gender.female ? activeColour : inactiveColour,
          cardChild: ReusableIcon(icon: FontAwesomeIcons.faceLaugh, label:''),
          ),
      ),
         


      Expanded(
          child: Reusable(
            onPress: (){
              setState(() {
                selectedgender = Gender.otro;
              });
            },
            colour: selectedgender == Gender.otro ? activeColour : inactiveColour,
            cardChild: ReusableIcon(icon: FontAwesomeIcons.faceLaugh, label:''),
      ),
          ),
         

    
     Container(
       color: Color.fromARGB(255, 118, 0, 59),
       margin: EdgeInsets.only(top: 10.0),
       width: double.infinity,
       height: consh,
     )
  ],
  ),
    ),
  ]),
);

}
}

class Reusable extends StatelessWidget {
  
  Reusable({required this.colour, required this.cardChild, required this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child:Container(
        child:  cardChild,
         margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
     
      ),
    );
    
  }
}

class ReusableIcon extends StatelessWidget {
  
  ReusableIcon({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size:150.0,
        ),
        SizedBox(
          height:15.0),
        Text(label,
        style:TextStyle(fontSize:18.0, color: Colors.white)),
      ],
    ); 
  }
}



/*
body: Center(
child: Text('Body Text'),
),
floatingActionButton: Theme(
  data: ThemeData(accentColor: Color.fromARGB(255, 229, 255, 0)),
  child: FloatingActionButton
  (onPressed: (){

  },
child: const Icon(Icons.add),
),
),*/