import 'dart:io';

void main() {
  String palavraOculta = "computador";
  List<String> letrasTestadas = [];
  int erros = 0;
  int limiteErros = 6;

  while (true) {
    String tela = "";
    bool acertouTudo = true;

    for (int i = 0; i < palavraOculta.length; i++) {
      if (letrasTestadas.contains(palavraOculta[i])) {
        tela += palavraOculta[i] + " ";
      } else {
        tela += "_ ";
        acertouTudo = false;
      }
    }

    print("\nPalavra: " + tela);
    print("Erros: $erros de $limiteErros");

    if (acertouTudo) {
      print("Parabens, voce descobriu a palavra!");
      break;
    }

    if (erros >= limiteErros) {
      print("Voce foi enforcado! A palavra era $palavraOculta");
      break;
    }

    print("Digite uma letra:");
    String letra = stdin.readLineSync()!.toLowerCase();

    if (letrasTestadas.contains(letra)) {
      print("Voce ja tentou essa letra");
    } else {
      letrasTestadas.add(letra);
      if (!palavraOculta.contains(letra)) {
        erros++;
      }
    }
  }
}
