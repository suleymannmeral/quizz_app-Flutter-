import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quizz_app/data/question.dart';
import 'package:quizz_app/questions_summary.dart';


class ResultScreen extends StatelessWidget {
const ResultScreen({ 
  super.key,
  required this.chosenAnswers,
  required this.onRestart

});

final List<String>chosenAnswers;
final void Function() onRestart;

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
    final summaryData=getSummaryData();
    final numTotalQuestion=questions.length;
    final numCorrectQusetion=summaryData.where((data){
      return data['correct_answers']==data['user_answer'];
    }).length;
    return
    SizedBox(
        width: double.infinity,
         child: Container(
          margin: const EdgeInsets.symmetric(horizontal:30 ),
           child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("You answered $numCorrectQusetion  out of $numTotalQuestion questions correctly",style: const TextStyle(color: Colors.white,fontSize: 15),),
              const SizedBox(height: 30,),
              QuestionsSummary(summaryData),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed:  onRestart,
                style:
                 ElevatedButton.styleFrom(
                backgroundColor: HexColor("#FFB900")
              ),
               child:
               const Text(
                "Restart Quiz"
                ,
                style:TextStyle(
                  color: Colors.black

                ),),)
 

            ],
           )

    ));
  }
}