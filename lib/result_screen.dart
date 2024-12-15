import 'package:flutter/material.dart';
import 'package:quizz_app/data/question.dart';
import 'package:quizz_app/questions_summary.dart';


class ResultScreen extends StatelessWidget {
const ResultScreen({ 
  super.key,
  required this.chosenAnswers

});

final List<String>chosenAnswers;

   List<Map<String,Object>>getSummaryData(){
      final List<Map<String,Object>> summary=[];

      for(var i=0 ; i<chosenAnswers.length;i++){
        summary.add({
          'question_index':i,
          'question':questions[i].text,
          'correct_answers':questions[i].answers[0],
          'user_answer':chosenAnswers[i],


        });
      }

       return summary;

   }

  @override
  Widget build(BuildContext context){
    return
    SizedBox(
        width: double.infinity,
         child: Container(
          margin: const EdgeInsets.symmetric(horizontal:30 ),
           child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You answered X out of Y questions correctly",style: const TextStyle(color: Colors.white),),
              const SizedBox(height: 30,),
              QuestionsSummary(getSummaryData()),
              const SizedBox(height: 30,),
              TextButton(onPressed: () {}, child: const Text("Restart Quiz"))
 

            ],
           )

    ));
  }
}