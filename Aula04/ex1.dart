import 'dart:io'; // permite a entrada de dados via teclado

void main(){
  String nome;
  String curso;
  int idade;
  print("Digite seu nome: "); 
  nome = (stdin.readLineSync()!);

  print("Digite seu curso: "); 
  curso = (stdin.readLineSync()!);

  print("Digite sua idade: "); 
  idade = int.parse(stdin.readLineSync()!);


  print("Seu nome é: $nome");
  print("Seu curso é: $curso");
  print("Sua idade é: $idade");

  
}