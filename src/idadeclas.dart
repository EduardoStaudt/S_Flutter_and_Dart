import 'dart:io';

void main (){
  print("Digite sua Idade:");
  int years = int.parse(stdin.readLineSync()!);

  if (years < 13){
    print("Crianca");
  }else if(years < 18){
    print("Adolescente");
  }else{
    print("Adulto");
  }
}