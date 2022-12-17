
import 'package:flutter/material.dart';

class MyGame extends StatefulWidget {
  const MyGame({Key? key}) : super(key: key);

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {

  List grade = [
    ['X','O','O'],
    ['O','X','X'],
    ['O','X','X']
  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: EdgeInsets.all(20.0), 
                     child: Text(
                       "Jogo da Velha",
                       style: TextStyle(
                           fontSize: 40,
                           color: Colors.black,
                           fontStyle: FontStyle.italic),
                     ),
                   ),
                 ],
               ),
               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                   myButton(linha: 0, coluna: 0),
                   myButton(linha: 0, coluna: 1),
                   myButton(linha: 0, coluna: 2),
               ]),
               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                   myButton(linha: 1, coluna: 0),
                   myButton(linha: 1, coluna: 1),
                   myButton(linha: 1, coluna: 2),
               ]),
               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                   myButton(linha: 2, coluna: 0),
                   myButton(linha: 2, coluna: 1),
                   myButton(linha: 2, coluna: 2),
               ]),
             ],
           ),
           Column(
             children: [
               Padding(
                     padding: EdgeInsets.all(11.0), 
                     child: Text(
                       "Vamos Começar...",
                       style: TextStyle(
                           fontSize: 16,
                           color: Colors.black,
                           fontStyle: FontStyle.italic),
                     ),
                   ),
                btInicio(),
             ],
           ),
         ],
       ),
     );
  }


  Widget myButton({required int linha, required int coluna}){
     return Padding(
       padding: EdgeInsets.all(4.0),
       child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
               fixedSize: Size(80,80), primary: Colors.black),
          child: Text(
            grade[linha][coluna],
            style: TextStyle(fontSize: 50),
          ),
          ),
       );

  }


  Widget btInicio(){
      return Padding(
       padding: EdgeInsets.all(4.0),
       child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
               fixedSize: Size(200,50), primary: Color.fromARGB(255, 71, 150, 240)),
          child: Text(
            "Iniciar",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          ),
       );
  }

}