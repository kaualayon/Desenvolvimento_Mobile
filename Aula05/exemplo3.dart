/*
Exemplo classe com atributos privados
24.02.2025
*/

class Pessoa{
  String? _nome; // _ representa atributo privado

  void setNome(String nome){
    _nome = nome;

  }

  String? getNome(){
    return _nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  cliente._nome = "Kauã";
  print("Nome do cliente: ${cliente.getNome()}");
}