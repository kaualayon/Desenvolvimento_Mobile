import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // variaveis para realizar o login
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();
  // variavel para exibir ou ocultar a senha
  bool exibir = false;
  // função para realizar o login
  _verificaLogin()async{
    // Cria variavel flag para quando encontrar o login
    bool encuser = false;
    // url com o endpoint dos usuarios da api
    String url = "http://10.109.83.6:3000/usuarios";
    // Variavel para armazenar a resposta da api
    http.Response resposta = http.get(Uri.parse(url));

  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}