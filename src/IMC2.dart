import 'dart:io';

void main() { 
  stdout.write("Informe seu peso (kg): "); 
  final String? pesoStr = stdin.readLineSync()?.replaceAll(',', '.'); // replaceAll para trocar virgula por ponto
  stdout.write("Informe sua altura (m): "); 
  final String? alturaStr = stdin.readLineSync()?.replaceAll(',', '.');

  final double? pesoTemp = double.tryParse(pesoStr ?? ''); // tryParse tenta converter para double se nao der retorna null
  double? alturaTemp = double.tryParse(alturaStr ?? '');

  if (alturaTemp == null) {
  print("Altura inválida. Digite algo como 1.84 ou 184 (cm).");
  return;
  }

  if(alturaTemp >= 1000){
    alturaTemp = alturaTemp/1000; 
  }else if(alturaTemp >= 100){
    alturaTemp = alturaTemp/100; 
  }else if(alturaTemp >= 3){
    alturaTemp = alturaTemp/10; 
  }

  // alturaTemp = 
  //   ((alturaTemp >= 1000) ? alturaTemp / 1000
  //   : (alturaTemp >= 3) ? alturaTemp / 100 
  //   : alturaTemp); 

  final double altura = alturaTemp;

  if (pesoTemp == null) {
    print("Peso inválido. Digite algo como 85.5 ou 85500 (g).");
    return;
  }

  final double peso = pesoTemp;

  final double imc = peso/ (altura * altura);

  String categoria = '';

  if (imc < 18.5) {
    categoria = "Abaixo do Peso";
  } else if (imc < 25) {
    categoria = "Peso Normal";
  } else if (imc < 30) {
    categoria = "Sobrepeso";
  } else if (imc < 35) {
    categoria = "Obesidade grau I";
  } else if (imc < 40) {
    categoria = "Obesidade grau II";
  } else {
    categoria = "Obesidade grau III (mórbida)";
  }

  // final String categoria = 
  //   (imc < 18.5) ? "Abaixo do peso"
  //   : (imc < 25) ? "Peso Normal"
  //   : (imc <30) ? "Sobrepeso"
  //   : (imc < 35) ? "Obesidade grau I"
  //   : (imc < 40) ? "Obesidade grau II"
  //   : "Obesidade grau III (mórbida)";

  print(
    "Seu peso: ${peso.toStringAsFixed(1)} kg, "
    "sua ${altura.toStringAsFixed(2)} m, "
    "e com isso seu IMC=${imc.toStringAsFixed(2)}, "
    "categorizado como: $categoria."
  );
}