import 'dart:io';


void main(){
  bool temCNH;

  print("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  print('Tem CNH? sim /nao');
  String resposta = stdin.readLineSync()!;
  
  switch(resposta){
    case 'sim':
      temCNH = true;
      break;
    case 'nao':
      temCNH = false;
      break;
    default:
      print("Entrada invalida");
      exit(0);
  }

  if (idade >= 18  && temCNH == true){
    print("Parabens Vc pode dirigir! Vc tem CNH e tem ${idade} anos");
  }else{
    print("Infelizmente vc ainda nao pode dirigir!");
  }
}