import 'dart:io'; // permite utilizar o readLineSync()

void main(){
  print("Qual seu nome? ");
  final String nome = stdin.readLineSync()!; // readLinesync retorna um Variavel? que pode ser nul;l enat o colloca-se este ! que nega que ese a possibilidfade de ser null
  print("Qual sua altura? ");
  double altura = double.parse(stdin.readLineSync()!);
  // alem disso o readLineSync retorna valores l"e Strings entao depois da leitura como queremos guardar um double utilizamods o double.parse que modifica de de Qualquer Variavel para double
  print("Seu nome eh ${nome}, e sua altura eh ${altura.toStringAsFixed(2)}m.");
}