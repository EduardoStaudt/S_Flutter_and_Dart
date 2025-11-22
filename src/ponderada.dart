import "dart:io";

double ponderada(int p1, int p2, int p3, double n1, double n2, double n3){
  return p1* n1 + p2 * n2 + p3 * n3;
}

void main(){
  print("Qual eh o peso da primeira nota:");
  final int? peso1 = int.tryParse(stdin.readLineSync() ?? '');
  print("Qual eh o peso da segunda nota:");
  final int? peso2 = int.tryParse(stdin.readLineSync() ?? '');
  print("Qual eh o peso da terceira nota:");
  final int? peso3 = int.tryParse(stdin.readLineSync() ?? '');

  if (peso1 == null || peso2 == null || peso3 == null){
    print('Erro: Peso(s) Invalido(s)');
    return;
  }

  print("Digite sua nota 1:");
  final double? nota1 = double.tryParse(stdin.readLineSync() ?? '');
  print("Digite sua nota 2:");
  final double? nota2 = double.tryParse(stdin.readLineSync() ?? '');
  print("Digite sua nota 3:");
  final double? nota3 = double.tryParse(stdin.readLineSync() ?? '');

  if (nota1 == null || nota2 == null || nota3 == null){
    print('Erro: Nota(s) Invalida(s)');
    return;
  } 


  final result = ponderada(peso1, peso2, peso3, nota1, nota2, nota3);
  print("Sua media eh ${result}");
}