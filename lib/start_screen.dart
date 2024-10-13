import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
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
              style: TextStyle(
                color:HexColor("#FFB900"),
                fontSize: 30,
              ),
            ),
           const SizedBox(height: 30),
           OutlinedButton(onPressed: (){},
            style: OutlinedButton.styleFrom(
              foregroundColor: HexColor("#FFB900")
            ),
             child: const Text('Start Quiz'))

      ],
    ),

     );
  }
}