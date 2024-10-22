
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
   

  
  
  @override
  State<QuestionsScreen>createState(){
    

    return _QuestionsScreenState();

  }
}

class _QuestionsScreenState extends State<QuestionsScreen>
{
  @override
  Widget build( context) {
       return Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             const Text('sss'),
             const SizedBox(height: 30),
             ElevatedButton(
              onPressed:() {},
                 style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('#FFB900'),
              ),
              child: const  Text(
                'Answer 1',
                style: TextStyle(
                color: Colors.black,
                ),
              ),
           
              ),
              ElevatedButton(
              onPressed:() {},
                 style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('#FFB900'),
              ),
              child: const  Text(
                'Answer 2',
                style: TextStyle(
                color: Colors.black,
                ),
              ),
           
              ),
             ElevatedButton(
              onPressed:() {},
                 style: ElevatedButton.styleFrom(
                backgroundColor: HexColor('#FFB900'),
              ),
              child: const  Text(
                'Answer 3',
                style: TextStyle(
                color: Colors.black,
                ),
              ),
           
              )
         
             
           ],
         ),
       );
  }
}