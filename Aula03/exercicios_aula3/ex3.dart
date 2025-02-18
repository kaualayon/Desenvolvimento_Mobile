import 'dart:io';

double calcularSalarioLiquido(double salarioBruto) {
  // Desconto de 10% de impostos
  double descontoImpostos = salarioBruto * 0.10;
  
  // Bonificação de 20%
  double bonificacao = salarioBruto * 0.20;
  
  // Cálculo do salário líquido
  double salarioLiquido = salarioBruto - descontoImpostos + bonificacao;
  
  return salarioLiquido;
}

void main() {
  // Solicitar o salário bruto do usuário
  print("Digite o seu salário bruto: ");
  double salarioBruto = double.parse(stdin.readLineSync()!);

  // Chamar a função para calcular o salário líquido
  double salarioLiquido = calcularSalarioLiquido(salarioBruto);

  // Exibir o resultado
  print("Seu salário líquido, após desconto de impostos e bonificação, é: R\$ $salarioLiquido");
}
