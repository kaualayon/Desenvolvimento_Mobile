// Classe base Produtos
class Produto {
  String nome;
  int quantidade;
  double preco;
  String tipoComunicacao;
  double consumoEnergia;

  // Construtor da classe Produto
  Produto(this.nome, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia);

  // Método para ligar o produto
  void ligar() {
    print("O produto $nome foi ligado.");
  }

  // Método para desligar o produto
  void desligar() {
    print("O produto $nome foi desligado.");
  }

  // Método de ajuste de temperatura (comunicação com as classes filhas)
  void ajusteTemperatura(double setpoint) {
    print("O produto $nome está ajustando a temperatura para $setpoint °C.");
  }
}

// Classe Fritadeira herdando de Produto
class Fritadeira extends Produto {
  // Construtor da classe Fritadeira
  Fritadeira(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método para fritar
  void fritar() {
    print("A fritadeira $nome está fritando...");
  }
}

// Classe Televisao herdando de Produto
class Televisao extends Produto {
  // Construtor da classe Televisao
  Televisao(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método para mudar de canal
  void mudarCanal(int canal) {
    print("A televisão $nome está no canal $canal.");
  }
}

// Classe ArCondicionado herdando de Produto
class ArCondicionado extends Produto {
  // Construtor da classe ArCondicionado
  ArCondicionado(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método específico para ajustar a temperatura do ar-condicionado
  void ajustarTemperatura(double temperatura) {
    print("O ar-condicionado $nome foi ajustado para $temperatura °C.");
  }
}

void main() {
  // Criando instâncias para cada tipo de produto
  var fritadeira = Fritadeira("Fritadeira Elétrica", 1, 150.0, "Bluetooth", 1200.0);
  var televisao = Televisao("Smart TV", 2, 2000.0, "Wi-Fi", 250.0);
  var arCondicionado = ArCondicionado("Ar-condicionado Split", 1, 1800.0, "Infrared", 1500.0);

  // Testando os métodos
  fritadeira.ligar();
  fritadeira.ajusteTemperatura(180); // Ajustando a temperatura da fritadeira
  fritadeira.fritar();
  fritadeira.desligar();

  televisao.ligar();
  televisao.mudarCanal(5); // Mudando o canal da televisão
  televisao.desligar();

  arCondicionado.ligar();
  arCondicionado.ajustarTemperatura(22); // Ajustando a temperatura do ar-condicionado
  arCondicionado.desligar();
}
