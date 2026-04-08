import 'dart:io';

void main() {
  List<List<String>> tabuleiro = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' '],
  ];

  String jogadorDaVez = 'X';
  int contadorJogadas = 0;

  while (true) {
    print("\n");
    for (int i = 0; i < 3; i++) {
      print(" ${tabuleiro[i][0]} | ${tabuleiro[i][1]} | ${tabuleiro[i][2]} ");
      if (i < 2) print("-----------");
    }

    print("\nJogador $jogadorDaVez, eh sua vez.");
    print("Digite a linha (0, 1 ou 2):");
    int linha = int.parse(stdin.readLineSync()!);
    print("Digite a coluna (0, 1 ou 2):");
    int coluna = int.parse(stdin.readLineSync()!);

    if (linha < 0 ||
        linha > 2 ||
        coluna < 0 ||
        coluna > 2 ||
        tabuleiro[linha][coluna] != ' ') {
      print("Posição invalida ou ja preenchida, tente novamente");
      continue;
    }

    tabuleiro[linha][coluna] = jogadorDaVez;
    contadorJogadas++;

    bool venceu = false;

    for (int i = 0; i < 3; i++) {
      if (tabuleiro[i][0] == jogadorDaVez &&
          tabuleiro[i][1] == jogadorDaVez &&
          tabuleiro[i][2] == jogadorDaVez)
        venceu = true;
      if (tabuleiro[0][i] == jogadorDaVez &&
          tabuleiro[1][i] == jogadorDaVez &&
          tabuleiro[2][i] == jogadorDaVez)
        venceu = true;
    }
    if (tabuleiro[0][0] == jogadorDaVez &&
        tabuleiro[1][1] == jogadorDaVez &&
        tabuleiro[2][2] == jogadorDaVez)
      venceu = true;
    if (tabuleiro[0][2] == jogadorDaVez &&
        tabuleiro[1][1] == jogadorDaVez &&
        tabuleiro[2][0] == jogadorDaVez)
      venceu = true;

    if (venceu) {
      print("\n");
      for (int i = 0; i < 3; i++) {
        print(" ${tabuleiro[i][0]} | ${tabuleiro[i][1]} | ${tabuleiro[i][2]} ");
        if (i < 2) print("-----------");
      }
      print("\nO jogador $jogadorDaVez ganhou o jogo!");
      break;
    }

    if (contadorJogadas == 9) {
      print("\n");
      for (int i = 0; i < 3; i++) {
        print(" ${tabuleiro[i][0]} | ${tabuleiro[i][1]} | ${tabuleiro[i][2]} ");
        if (i < 2) print("-----------");
      }
      print("\nDeu velha! Empate!");
      break;
    }

    if (jogadorDaVez == 'X') {
      jogadorDaVez = 'O';
    } else {
      jogadorDaVez = 'X';
    }
  }
}
