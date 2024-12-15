import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AnswerButton extends StatelessWidget {
 const AnswerButton({super.key,required this.answerText, required this.onTap,});

final String answerText;
final void Function() onTap;
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                 backgroundColor: HexColor("#FFB900"),
                foregroundColor: Colors.black,
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))
              ),
               child:  Text(answerText,textAlign:TextAlign.center)
              
               );
               
  }
}