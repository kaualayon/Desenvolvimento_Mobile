// biblioteca sempre necessaria para criar os Widgets para o Android
import 'package:flutter/material.dart';

// funçao principal do codigo do aplicativo
void main() {
  runApp(TelaApp()
  );
}
// cria uma classe do tipo Stateless
class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App aula 08"),
          backgroundColor: Colors.red,
        ),
        body: ,
      ),
    );
  }
}

