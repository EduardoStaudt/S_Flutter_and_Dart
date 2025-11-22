import 'dart:io';

void main(){
  print("Qual a medida que vc deseja converter: ");
  String? tamanhoTemp = stdin.readLineSync()?.replaceAll(',', '.');
  
  if (tamanhoTemp == null){
    print("Erro: valor Invalido");
    return;
  }

  double tamanho = double.parse(tamanhoTemp);

  tamanho = ((tamanho >= 1000) ? tamanho/1000 //mm
            : (tamanho > 100) ? tamanho/100  //cm
            : (tamanho > 3) ? tamanho/10  //m pra cm
            : tamanho); //m

  print("Seu valor ${tamanho.toStringAsFixed(2)} m");
}




