import 'package:flutter/material.dart';


class QuestionsSummary extends StatelessWidget {
const QuestionsSummary(this.summaryData,{ super.key});

final List<Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context){
    return Column(
      children: summaryData.map(
        (data){
          return Row(children: [
            Text(((data['question_index'] as int)+1).toString(),style: const TextStyle(color: Colors.white),),
             Column(children: [
              Text(data['question'] as String,style: const TextStyle(color: Colors.green), ),
              const SizedBox(height: 5,),
              Text(data['user_answer'] as String,style: const TextStyle(color: Colors.yellow),),
              const SizedBox(height: 5,),
              Text(data['correct_answers'] as String,style: const TextStyle(color: Colors.blue),),

             ],)

          ],);
        }
      ).toList(),
    );
  }
}