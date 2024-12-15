import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class QuestionsSummary extends StatelessWidget {
const QuestionsSummary(this.summaryData,{ super.key});

final List<Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data){
              return Row(children: [
                Text(((data['question_index'] as int)+1).toString(),style: TextStyle(
                  color: HexColor("#FFB900"),
                  fontSize: 15
                  ),),
                const SizedBox(width: 15,),
                
                 Expanded(
                  
                   child: Column(children: [
                    const SizedBox(height: 50,),
                    Text(data['question'] as String,style: const TextStyle(color: Colors.red,fontSize: 15), ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        const Text("YA:  ",style:TextStyle(color: Colors.white),),
                        Text(data['user_answer'] as String,style: const TextStyle(color: Colors.blue,fontSize: 15),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                                            mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const Text("CA:  ",style: TextStyle(color: Colors.white),),
                        Text(data['correct_answers'] as String,style: const TextStyle(color: Colors.green,fontSize: 15),),
                      ],
                    ),
                   
                   ],),
                 )
        
              ],);
            }
          ).toList(),
        ),
      ),
    );
  }
}