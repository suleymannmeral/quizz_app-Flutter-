import 'package:quizz_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app/data/question.dart';
import 'package:google_fonts/google_fonts.dart';



class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key,required this.onSelectAnswer,});

  final void Function(String answer) onSelectAnswer;
   

  
  
  @override
  State<QuestionsScreen>createState(){
    

    return _QuestionsScreenState();

  }
}

class _QuestionsScreenState extends State<QuestionsScreen>
{
  var currentQuestionIndex=0;

  void answerQuestion(String selectedAnswers){
    widget.onSelectAnswer(selectedAnswers);
   
    setState(() {
       currentQuestionIndex++;
    });

  }
  @override
  Widget build( context) {
      final currentQuestion=questions[currentQuestionIndex];

       return SizedBox(
        width: double.infinity,
         child: Container(
          margin: const EdgeInsets.symmetric(horizontal:30 ),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Text(currentQuestion.text,textAlign: TextAlign.center
              ,style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              )),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffledAnswers().map((answer){
                return AnswerButton(answerText: answer, onTap: ()
                {
                  answerQuestion(answer);
                }
                );
              })
             
           
                   
            ],
           ),
         ),
       );
  }
}