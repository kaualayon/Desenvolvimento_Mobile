import 'package:app_login_aula09/tela2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // cria variavel para armazenar o usuario
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();

  // cria função para verificar o usuario e fazer o login

  _verificalogin(){
    if(user.text=="Senai" && senha.text =="2025"){
      // Chama a segunda tela

      Navigator.push(context, MaterialPageRoute(
        builder: (context)=>Tela02()));
    }
    else{
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}