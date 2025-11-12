import 'dart:io';

void main() {
  stdout.write("Informe seu peso (kg): "); 
  final String? pesoStr = stdin.readLineSync();

  stdout.write("Informe sua altura (m): "); 
  final String? alturaStr = stdin.readLineSync();

  final double peso = double.parse(pesoStr!);
  final double altura = double.parse(alturaStr!);

  final double imc = peso / (altura * altura);

  print("Seu peso: $peso, sua $altura, e com isso seu IMC=${imc.toStringAsFixed(2)}.");

  if (imc < 18.5) {
    print("Abaixo do peso");
  } else if (imc >= 18.5 && imc < 25) {
    print("Peso normal");
  } else if (imc >= 25 && imc < 30) {
    print("Sobrepeso");
  } else if (imc >= 30 && imc < 35) {
    print("Obesidade grau I");
  } else if (imc >= 35 && imc < 40) {
    print("Obesidade grau II");
  } else {
    print("Obesidade grau III ou mórbida");
  }
}
