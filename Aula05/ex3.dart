// Classe base Máquinas
class Maquina {
  String nome;
  int quantidadeEixos;
  int rotacoesPorMinuto;
  double consumoEnergia;

  // Construtor da classe Máquinas
  Maquina(this.nome, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

  // Método para ligar a máquina
  void ligar() {
    print("A máquina $nome foi ligada.");
  }

  // Método para desligar a máquina
  void desligar() {
    print("A máquina $nome foi desligada.");
  }

  // Método para ajustar a velocidade de rotação da máquina
  void ajustarVelocidade(int novaRotacao) {
    rotacoesPorMinuto = novaRotacao;
    print("A rotação da máquina $nome foi ajustada para $rotacoesPorMinuto RPM.");
  }
}

// Classe Furadeira herdando de Maquina
class Furadeira extends Maquina {
  // Construtor da classe Furadeira
  Furadeira(String nome, int quantidadeEixos, int rotacoesPorMinuto, double consumoEnergia)
      : super(nome, quantidadeEixos, rotacoesPorMinuto, consumoEnergia);

  // Método específico para furadeira
  void perfurar() {
    print("A furadeira $nome está perfurando...");
  }
}

void main() {
  // Criando uma instância de Furadeira
  var furadeira = Furadeira("Furadeira Elétrica", 1, 1500, 500.0);

  // Testando os métodos
  furadeira.ligar();
  furadeira.ajustarVelocidade(2000); // Ajustando a rotação da furadeira
  furadeira.perfurar();
  furadeira.desligar();
}
