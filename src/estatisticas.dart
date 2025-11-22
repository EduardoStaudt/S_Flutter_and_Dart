import 'dart:io';

List <int> numerosInt = [];
List <double> numerosDouble = [];

double media(double somados, int total){
  return somados/total;
}

double max(List<int> numInt, List<double> numDouble) {
  double max = -999999999999;
  // Percorre os números double corretamente
  for (double i in numDouble) {
    if (i > max) max = i;
  }
  // Percorre os números int corretamente
  for (int i in numInt) {
    if (i > max) max = i.toDouble();
  }
  return max;
}

double min(List<int> numInt, List<double> numDouble) {
  double min = 9999999999999;
  for (double i in numDouble) {
    if (i < min) min = i;
  }
  for (int i in numInt) {
    if (i < min) min = i.toDouble();
  }
  return min;
}


void main(){
  double soma = 0;

  print("Digite quantos numeros inteiros terao no cauculo: ");
  int n = int.parse(stdin.readLineSync()!); 
  print("Digite quantos numeros inteiros terao no cauculo: ");
  int m = int.parse(stdin.readLineSync()!); 

  for(int i = 0; i < n; i++){
    print("Digite a nota: ");
    int valor = int.parse(stdin.readLineSync()!);
    numerosInt.add(valor);
    soma += valor;
  }
  for(int i = 0; i < m; i++){
    print("Digete a nota: ");
    double valor = double.parse(stdin.readLineSync()!);
    numerosDouble.add(valor); 
    soma += valor;
  }
  double mediaTotal = media(soma, n+m);
  print('Media de Todas as Notas: ${mediaTotal.toStringAsFixed(2)}');

  double minimo = min(numerosInt, numerosDouble);
  double maximo = max(numerosInt, numerosDouble);

  print('Menor nota ${minimo.toStringAsFixed(2)}, Maior nota ${maximo.toStringAsFixed(2)}.');

  for (int i = 0; i < n; i++){
    if(numerosInt[i] >= mediaTotal){
      print("Nota: ${i + 1} esta acima da media!");
    }else{
      print('Nota: ${i + 1} esta abaixo da media!');
    }
  }
  for (int i = 0; i < m; i++){
    if(numerosDouble[i] >= mediaTotal){
      print("Nota: ${i + 1} esta acima da media!");
    }else{
      print('Nota: ${i + 1} esta abaixo da media!');
    }
  }
}