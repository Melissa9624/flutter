import 'dart:async';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

/*void main() { //DADOS
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 3, 3),
        appBar:  AppBar( 
        title: Text('Dice Game'),
        backgroundColor: Color.fromARGB(255, 253, 3, 3),
        ),

        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
            height: 100.0,
            width: double.infinity,
            //color: Color.fromARGB(255, 255, 0, 0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
             Image(image: AssetImage('images/dado.png')),
             Image(image: AssetImage('images/dado2.webp')),             
             
            ],
            ),
            ),
          ],
          ),
        ),

        
        ),
    );
   
  }*/


 /* void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 3, 3),
        appBar:  AppBar( 
        title: Text('Dice Game'),
        backgroundColor: Color.fromARGB(255, 253, 3, 3),
        ),

        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image(
                 width: 50,
                 image: AssetImage('images/dado.png')),
                 ),
               Expanded(
                child: Image(
                 width: 50,
                 image: AssetImage('images/dado2.webp')),
                 ),
               ],
              ),
        ),
          
          ),
        );
 }*/
  /* void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 3, 3),
        appBar:  AppBar( 
        title: Text('Dice Game'),
        backgroundColor: Color.fromARGB(255, 253, 3, 3),
        ),

        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                   width: 50,
                   image: AssetImage('images/dado.png')),
                ),
                 ),
               Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                   width: 50,
                   image: AssetImage('images/dado2.webp')),
                ),
                 ),
               ],
              ),
        ),
          
          ),
        );
  }*/

/*void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 3, 3),
        appBar:  AppBar( 
        title: Text('Dice Game'),
        backgroundColor: Color.fromARGB(255, 253, 3, 3),
        ),

        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FlatButton( //Click sin margen
                    onPressed: (){
                      print('Left button got pressed');
                    },
                    child: Image(
                      width: 200,
                      image: AssetImage('images/dado2.webp')),
                      )
                    ),
                 ),
               Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RaisedButton( //Click con margen
                    onPressed: (){
                      print('Right button got pressed');
                    },
                    child: Image(
                   width: 200,
                   image: AssetImage('images/dado.png')),)
                 ),
                 ),
               ],
              ),
        ),
          
          ),
        );
  }*/

 /* void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _DiceGame createState() => _DiceGame();
}

  class _DiceGame extends State<Myapp> {
    int ldiceNumber1 = 1;
    int ldiceNumber2 = 2;

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 253, 3, 3),
          appBar:  AppBar( 
          title: Text('Dice Game'),
          backgroundColor: Color.fromARGB(255, 253, 3, 3),
          ),

          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FlatButton( //Click sin margen
                      onPressed: (){
                        setState(() {
                          if (ldiceNumber1 == 1){
                            ldiceNumber1 = 2;}
                            else{
                              ldiceNumber1 = 1;
                            }
                          });
                      },
                      child: Image.asset('images/dado$ldiceNumber1.png')
                        )
                      ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FlatButton( //Click sin margen
                      onPressed: (){
                        setState(() {
                         if (ldiceNumber2 == 2){
                            ldiceNumber2 = 4;}
                            else{
                              ldiceNumber2 = 2;
                            }
                        });
                      },
                      child: Image.asset('images/dado$ldiceNumber2.png')
                        )
                      ),
                  ),
                ],
                ),
          ),
            
            ),
          );
    }*/

/*import 'dart:math';  //Dado aleatorio
 void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _DiceGame createState() => _DiceGame();
}

  class _DiceGame extends State<Myapp> {
    int ldiceNumber1 = 1;
    int ldiceNumber2 = 1;

    void changedado (){
      ldiceNumber1=Random().nextInt(4)+1;
      ldiceNumber2=Random().nextInt(4)+1;
    }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 253, 3, 3),
          appBar:  AppBar( 
          title: Text('Dice Game'),
          backgroundColor: Color.fromARGB(255, 253, 3, 3),
          ),

          body: Column(
            children: [
              Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FlatButton( //Click sin margen
                          onPressed: (){
                            setState(() {
                              ldiceNumber1 = Random().nextInt(4)+1;
                              print('Dado=$ldiceNumber1');
                                }
                              );
                          },
                          child: Image.asset('images/dado$ldiceNumber1.png')
                            )
                          ),
                      ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FlatButton( //Click sin margen
                          onPressed: (){
                            setState(() {
                             ldiceNumber2 = Random().nextInt(4)+1;
                              print('Dado=$ldiceNumber2');
                            });
                          },
                          child: Image.asset('images/dado$ldiceNumber2.png')
                            )
                          ),
                      ),

                    
                ],
                ),
               
              ),
               Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                        child: FlatButton( //Click sin margen
                          onPressed: (){
                            setState(() {
                             changedado();
                            });
                          },
                          child: Text('Play')
                            )
                          ),
                      ),
            ],
          ),

                
                ),
          );
            
            
          
    }*/

  /*import 'dart:math';  //Dado aleatorio
 void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _DiceGame createState() => _DiceGame();
}

  class _DiceGame extends State<Myapp> {

    int ldiceNumber1 = 3;
    int ldiceNumber2 = 3;
    int t=0;

    late Timer timer;

    

    @override
    void initState(){
        super.initState();
        
    }

    void play(){
      timer = Timer.periodic(Duration(seconds: 1),(Timer t)=> changedado());
    }
    void changedado (){
     
      setState(() {
        ldiceNumber1 = Random().nextInt(4)+1;
        ldiceNumber2 = Random().nextInt(4)+1;
        print('Dice=$ldiceNumber1');
        print('Dice=$ldiceNumber2');
      
      }
      
      );
      if (t == 5){
        dispose();
        t=0;
      } else{
        t=t+1;
      }
    }

    @override
    void dispose(){
      timer.cancel();
      //super.dispose();
    }  
    

    @override
    
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 253, 3, 3),
          appBar:  AppBar( 
          title: Text('Dice Game'),
          backgroundColor: Color.fromARGB(255, 253, 3, 3),
          ),

          body: Column(
            children: [
              Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FlatButton( //Click sin margen
                          onPressed: (){
                            setState(() {
                              ldiceNumber1 = Random().nextInt(4)+1;
                              print('Dado=$ldiceNumber1');
                                }
                              );
                          },
                          child: Image.asset('images/dado$ldiceNumber1.png')
                            )
                          ),
                      ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FlatButton( //Click sin margen
                          onPressed: (){
                            setState(() {
                             ldiceNumber2 = Random().nextInt(4)+1;
                              print('Dado=$ldiceNumber2');
                            });
                          },
                          child: Image.asset('images/dado$ldiceNumber2.png')
                            )
                          ),
                      ),

                    
                ],
                ),
               
              ),
               Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                        child: FlatButton( //Click sin margen
                          onPressed: (){
                            setState(() {
                             play();
                           
                            });
                          },
                          child: Text('Play')
                            )
                          ),
                      ),
                ],
              ),
           ),
          );
             
    }*/

/*void main() {
  runApp(Myapp());
}
  class Myapp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          body:  SafeArea(
            child: Center(child: Text(nouns.first)),
          ),
        ));
    }*/

  /*void sonar(int s){
    final p=AudioCache();
    p.play('note$s.wav');
  }
  void main() {
  runApp(Myapp());
}
  class Myapp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          body:  SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child:FlatButton(
                    color: Colors.red,
                    onPressed: (){
                      sonar(1);
                    },
                    child: Text(''),
                  ),
                  ),),
               Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: FlatButton(
                    color: Colors.orange,
                    onPressed: (){
                      sonar(2);
                    },
                    child: Text(''), 
                  ),
                  ),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                  child:FlatButton(
                    color: Colors.yellow,
                    onPressed: (){
                      sonar(3);
                    },
                    child: Text(''), 
                  ),
                  ),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: (){
                      sonar(4);
                    },
                    child: Text(''), 
                  ),
                  ),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: (){
                      sonar(5);
                    },
                    child: Text(''), 
                  ),
                  ),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: FlatButton(
                    color: Colors.bluegrey,
                    onPressed: (){
                      sonar(6);
                    },
                    child: Text(''), 
                  ),
                  ),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: FlatButton(
                    color: Colors.purple,
                    onPressed: (){
                      sonar(6);
                    },
                    child: Text(''), 
                  ),
                  ),),
              ],
            )
            )
        )
      );
    }*/

  /*void sonar(int s){
    final p=AudioCache();
    p.play('note$s.wav');
  }

  void main() {
  runApp(Myapp());
}
  

    Expanded repeat({ Color color = Colors.black, int sname =1}){
                return Expanded(
                  child: FlatButton(
                    color: color,
                    onPressed: (){
                        sonar(sname);
                    },
                    child: Text(''),
                    
                  )
                );
  }
  class Myapp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          body:  SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                repeat(color: Colors.red, sname: 1),
                repeat(color: Colors.orange , sname: 1),
                repeat(color: Colors.yellow, sname: 1),
                repeat(color: Colors.green, sname: 1),
                repeat(color: Colors.blueGrey, sname: 1),
                repeat(color: Colors.blue, sname: 1),
                repeat(color: Colors.purple, sname: 1),
                             
              ],
            )
            )
        )
      );
    }*/
  

/*void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> score =[
    Icon(
        Icons.check,
        color: Colors.green,
        ),
    Icon(
        Icons.close,
        color: Colors.red,
        ),
    Icon(
        Icons.close,
        color: Colors.red,
        ),
    Icon(
        Icons.close,
        color: Colors.red,
        ),
    Icon(
        Icons.check,
        color: Colors.green,
        ),
    Icon(
        Icons.check,
        color: Colors.green,
        ),
    Icon(
        Icons.check,
        color: Colors.green,
        ),
    Icon(
        Icons.check,
        color: Colors.green,
        ),
  ];
  List<String> questions =[
    'Por que Sebastian es malo?', 'Sebastian es malo con Melissa', 'Sebastian es grosero?'
  ];
  int contador=0;
  
  List <int> respuesta=[1,1,0];
  
  void devolverse(){
    if(contador>=3){
    contador=0;
    }
  }



  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[contador],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  if(respuesta[a]==1){
                    score.add(
                      Icon(Icons.check, color: Colors.green),
                    );
                  }
                    else(respuesta[a]==0){
                      score.add(
                        Icon(Icons.close, color: Colors.red,)
                      );
                    }
                    contador++;
                  }                   
                });
              //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                contador=contador+1;
                score.add(
                Icon(
                  Icons.close,
                  color: Colors.red,
                ),
              );
                });
                 //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: score,)
        //TODO: Add a Row here as your score keeper
      ],
    );
  }*/


/*import 'dart:async';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'dart:io';
import 'dart:ui';
import 'dart:math';
import 'QuizBrain.dart';

import 'package:flutter/material.dart';

QuizBrain qb = QuizBrain();
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> score = [];

  int sem = 0;
  int aw = 0;
  int c = 0;
  void checkAnswer(bool ans) {
    bool correctans = qb.getQuestionAns();
    if (ans == correctans) {
      score.add(
        Icon(Icons.check, color: Colors.green),
      );
      c = c + 1;
    } else {
      score.add(
        Icon(Icons.close, color: Colors.red),
      );
    }
  }

  void reinicio() {
    if (aw == 3) {
      if (c >= 2) {
        Alert(context: context, title: "Ganaste", desc: "¡Felicidades!").show();
        score.clear();
        c = 0;
        aw = 0;
      } else {
        Alert(context: context, title: "Perdiste", desc: "¡Intentalo de nuevo!")
            .show();
        score.clear();
        c = 0;
        aw = 0;
      }
    }
  }

  void si() {
    if (sem >= 3) {
      sem = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qb.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  aw++;
                  checkAnswer(true);
                  qb.questionnext();
                  reinicio();
                  qb.si();
                  sem++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  aw++;
                  checkAnswer(false);
                  qb.questionnext();
                  qb.si();
                  reinicio();
                  si();
                  sem++;
                });
              },
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}
 */
import 'package:flutter/material.dart';
import 'inputpage.dart';
void main() => runApp(BMICalculator());
class BMICalculator extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.red,
    appBarTheme: AppBarTheme(backgroundColor: Color.fromARGB(255, 171, 6, 171),
    ),
    accentColor: Colors.purple,
    scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
    textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)
    ,)
    ), 
    
home: InputPage(),
);
}
}

