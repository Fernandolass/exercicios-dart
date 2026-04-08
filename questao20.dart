import 'dart:io';

void main() {
  List<List<String>> mapa = [
    ['#', '#', '#', '#', '#', '#', '#', '#'],
    ['#', ' ', ' ', ' ', '#', ' ', ' ', '#'],
    ['#', '#', '#', ' ', '#', ' ', '#', '#'],
    ['#', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
    ['#', ' ', '#', '#', '#', '#', ' ', '#'],
    ['#', ' ', ' ', ' ', ' ', '#', 'S', '#'],
    ['#', '#', '#', '#', '#', '#', '#', '#'],
  ];

  int x = 1;
  int y = 1;
  mapa[5][6] = 'E';

  while (true) {
    print("\n");
    for (int i = 0; i < mapa.length; i++) {
      String linhaMapa = "";
      for (int j = 0; j < mapa[i].length; j++) {
        if (i == y && j == x) {
          linhaMapa += "P ";
        } else {
          linhaMapa += mapa[i][j] + " ";
        }
      }
      print(linhaMapa);
    }

    if (mapa[y][x] == 'E') {
      print("Parabens! Voce encontrou a saida");
      break;
    }

    print("Digite W, A, S ou D para mover:");
    String movimento = stdin.readLineSync()!.toLowerCase();

    int futuroX = x;
    int futuroY = y;

    if (movimento == 'w') {
      futuroY--;
    } else if (movimento == 's') {
      futuroY++;
    } else if (movimento == 'a') {
      futuroX--;
    } else if (movimento == 'd') {
      futuroX++;
    } else {
      print("Botao errado");
      continue;
    }

    if (mapa[futuroY][futuroX] != '#') {
      x = futuroX;
      y = futuroY;
    } else {
      print("Parede no caminho!");
    }
  }
}
