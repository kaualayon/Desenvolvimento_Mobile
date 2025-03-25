import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TelaApp(    
    ),
  ));
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ex1 aula 08 - Exercicios"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 800,
                  height: 45,
                  color: Colors.blueAccent,
                  child: Text("Stack",
                  style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 0, 0, 0)),
                  textAlign: TextAlign.center,),
                ),
                
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}