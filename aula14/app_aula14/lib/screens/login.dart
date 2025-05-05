import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // pacote utilizado para converter json

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
    String url = "http://10.109.83.10:3000/usuarios";
    // Variavel para armazenar a resposta da api
    http.Response resposta = await http.get(Uri.parse(url));
    List clientes =<Users>[]; // cria uma lista para armazenar os usuarios cadastrados
    print(resposta.statusCode); // codigo de retorno api
    // cria uma variavel dados
    var dados = json.decode(resposta.body) as List; // armazena o dado na forma de lista
    print("${dados[0]["login"]}  ${dados[0]["senha"]}");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(
            height: 300,
            width: 300,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      icon: Icon(Icons.people_alt_outlined,color: Colors.red,),
                      hintText: "Digite seu nome"
                    ),
                    controller: user,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    icon: Icon(Icons.key_outlined,),
                    iconColor: Colors.red,
                    suffixIcon: IconButton(icon: Icon(exibir? Icons.visibility_off:Icons.visibility),onPressed: (){
                    exibir= !exibir;
                    }), 
                    hintText: "Digite sua senha",
                    
                  ),
                  obscureText: exibir,
                  obscuringCharacter: '*',
                  controller: senha,
                  
                ),
                ElevatedButton(onPressed: _verificaLogin, child: Text("Entrar")),
                ElevatedButton(onPressed: (){

                }, child: Text("Cadastrar"))
              ],
            ),
           )
          ],
        ),
      ),
    );
  }
}

// Cria classe chamada Users
class Users{
  String id;
  String login;
  String senha;
  // cria o construtor
  Users(this.id,this.login,this.senha);

  // metodo para acessar os usuarios
  factory Users.fromJson(Map<String,dynamic>json){
    return Users(json["id"], json["login"], json["senha"]);
  }
}
/*
Users{
  json["id"]:0,
  json["login"]:"senai",
  json["senha"]:"senha"
}
*/