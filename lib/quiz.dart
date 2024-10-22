import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/question_screen.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
   State<Quiz>createState(){
    return _QuizState();
   }

}

class _QuizState extends State<Quiz> {
  var activeScreen='start-screen';


  void switchScreen()
  {
    setState((){
     activeScreen='questions-screen';
    });
  }
 
  @override
  Widget build(context){
    Widget screenWidget=StartScreen(switchScreen);

    if(activeScreen=='questions-screen')
    {
      screenWidget=const QuestionsScreen();
    }
    return    MaterialApp(
            home:Scaffold(
              appBar: AppBar(
                title: const Text('Quizz App'),
                backgroundColor: Colors.white,
                centerTitle: true,
              ),
                body:Container(
                    decoration: const  BoxDecoration(gradient: LinearGradient(
                    colors:[
                        Colors.black,
                        Colors.black
                        
                    ]
                    ),),
                    child:screenWidget,
                    ),
            ),
        );

  }
}