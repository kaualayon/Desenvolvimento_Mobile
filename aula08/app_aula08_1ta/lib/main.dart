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
        title: Text("App aula 08 - Multichild layout"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star,color: Colors.yellow,size: 50,),
              Icon(Icons.favorite,color: Colors.red,size: 50,),
              Icon(Icons.thumb_up,color: Colors.blue,size: 50,),
            ],
          ),
          // Sizebox adiciona espaçamento para separar os elementos
          SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blueAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
                child: Text("Stack",
                style: TextStyle(fontSize: 20,color: Colors.white),
                textAlign: TextAlign.center,),
                
              )
            ],
          )
        ],
      ),
    );
  }
}