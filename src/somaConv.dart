
import 'dart:io';

void soma (numeroUm, numeroDois){
  double resultado = numeroUm + numeroDois;
  print("Soma = ${resultado.toStringAsFixed(1)}");
}
void main(){
  print("Digite um numero: ");
  double n1 = double.parse(stdin.readLineSync()!.replaceAll(",", ".")); // replaceAll nao aceita numeros nulos por isso com o ! agente afirma que o numero nap sera nulo

  print("Digite um numero: ");
  double n2 = double.parse(stdin.readLineSync()!.replaceAll(",", "."));

  soma(n1, n2);
}