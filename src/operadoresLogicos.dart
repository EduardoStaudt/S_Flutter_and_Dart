void main() {
  final int idade = 18;     // mude valores pra testar
  final bool temCNH = true;

  bool podeDirigir = idade >= 18 && temCNH == true;

  print("Pode dirigir? ${podeDirigir ? 'Pode' : 'Nao pode'} dirigir");
}