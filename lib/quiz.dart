import 'package:flutter/material.dart';
import 'package:quizz_app/data/question.dart';
import 'package:quizz_app/result_screen.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/question_screen.dart';
import 'package:hexcolor/hexcolor.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
   State<Quiz>createState(){
    return _QuizState();
   }

}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswers=[];
  var activeScreen='start-screen';


  void switchScreen()
  {
    setState((){
     activeScreen='questions-screen';
    });
  }
  
  void chooseAnswer(String answer)
  {
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length){
      setState(() {
        activeScreen='result-screen';
      });
    }
  }
 
  @override
  Widget build(context){
    Widget screenWidget=StartScreen(switchScreen);

    if(activeScreen=='questions-screen')
    {
      screenWidget= QuestionsScreen(onSelectAnswer: chooseAnswer,);
    }
    if(activeScreen=='result-screen')
    {
      screenWidget= ResultScreen(chosenAnswers:selectedAnswers,);
    }
    return    MaterialApp(
      debugShowCheckedModeBanner: false,
            home:Scaffold(
              appBar: AppBar(
                title: const Text('Quizz App'),
                backgroundColor: HexColor("#FFB900"),
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