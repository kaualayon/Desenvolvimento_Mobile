// importa a biblioteca necessaria para criar a tela com
// os widgets do SO Android
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget Scaffold
    return Scaffold(
      //appBar
    appBar: AppBar(
      title: Text("App aula 08 - Single Layout"),
      backgroundColor: Colors.blue,
      actions: [
        IconButton(
          onPressed: (){
            print("Busca acionada");
          }, icon: Icon(Icons.search)),
          IconButton(
            
            onPressed: (){
              print("Mais detalhes acionado");
            }, icon: Icon(Icons.more_vert)),
      ],
      
    ),

    body: Container(
      width: 200,height: 200,
      color:Colors.blue ,
      child: Text("Aplicativo Mobile",
      style: TextStyle(fontSize: 20),),
      ),
    );
  }
}