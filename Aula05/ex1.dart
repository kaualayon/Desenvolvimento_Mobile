class Animal {
  // Atributos da classe Animal
  String nome;
  int idade;
  String cor;
  String raca;

  // Construtor para inicializar os atributos
  Animal(this.nome, this.idade, this.cor, this.raca);

  // Método para exibir as informações do animal
  void mostrarInfo() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("Cor: $cor");
    print("Raça: $raca");
  }
}

void main() {
  // Criando um objeto da classe Animal
  var cachorro = Animal("Rex", 5, "Preto", "Labrador");

  // Exibindo informações do cachorro
  cachorro.mostrarInfo();
}
