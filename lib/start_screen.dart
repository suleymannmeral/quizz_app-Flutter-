import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(context){
    return   Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/ssi.png',
          width: 300,
         
          
          ),
            Text(
              'Learn Flutter The Fun Way',
            style:  GoogleFonts.sixtyfour(
              color: HexColor("#FFB900"),
              fontSize: 15,
                
              )
            
            ),
           const SizedBox(height: 30),
           OutlinedButton.icon(
           onPressed: startQuiz,
           

        
            style: OutlinedButton.styleFrom(
              foregroundColor: HexColor("#FFB900")
            ),
            icon: const  Icon(Icons.arrow_right_alt),
             label:  const Text('Start Quiz'))

      ],
    ),

     );
  }
}