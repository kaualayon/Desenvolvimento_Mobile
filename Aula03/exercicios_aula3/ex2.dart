import 'dart:ffi';
import 'dart:io'; // permite a entrada de dados via teclado

void main(){
  double area_triangulo;
  double base_triangulo;
  double altura_triangulo;
  

  print("Digite o valor da base do triangulo: "); 
  base_triangulo = double.parse(stdin.readLineSync()!);

 
  print("Digite o valor da altura do triangulo: "); 
  altura_triangulo = double.parse(stdin.readLineSync()!);

  area_triangulo = (base_triangulo*altura_triangulo)/2;


  print("O valor da área do triângulo é de : $area_triangulo");
  
  
  
}