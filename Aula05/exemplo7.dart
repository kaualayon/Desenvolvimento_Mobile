/* Exemplo construtor
24.02.2025
*/

class Fruta{
  String sabor;
  String nome;
  String cor;
  double peso;
  int diasDesdecolheita;
  bool? isMadura;
  //Cria o construtor

  Fruta(this.sabor, this.nome, this.cor, this.peso, this.diasDesdecolheita);

  //Método para verificar se a fruta está madura 
  void verificarMaturidade(int diasParaMaturidade){
    if(diasDesdecolheita>= diasParaMaturidade){
      print("A $nome está madura");
    }
    else{
      print("A $nome não está madura");
      isMadura = false;
    }
  }
}

void main(){
  Fruta manga = Fruta("Doce", "Manga", "Amarela", 1.2, 5);
  manga.verificarMaturidade(4);
}