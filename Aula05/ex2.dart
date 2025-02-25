// Classe base Animal
class Animal {
  String tipo;
  double peso;

  // Construtor da classe Animal
  Animal(this.tipo, this.peso);

  // Método acordou
  void acordou() {
    print("O $tipo acordou!");
  }

  // Método dormiu
  void dormiu() {
    print("O $tipo dormiu!");
  }
}

// Classe Filha que herda de Animal
class Filha extends Animal {
  // Construtor da classe Filha que chama o construtor da classe Animal
  Filha(String tipo, double peso) : super(tipo, peso);
}

void main() {
  // Criando instâncias para cada tipo de animal
  var passaro = Filha("pássaro", 0.5);
  var cachorro = Filha("cachorro", 10);
  var tigre = Filha("tigre", 120);
  var peixe = Filha("peixe", 1.2);

  // Testando os métodos
  passaro.acordou();
  cachorro.dormiu();
  tigre.acordou();
  peixe.dormiu();
}
