import 'dart:io';

void main() {
  stdout.write('Digite o valor de N: ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> vetor = [];

  for (int i = 0; i < n; i++) {
    stdout.write('Digite o ${i + 1} número: ');
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  List<int> jaPassou = [];

  print('\nResultado:');

  for (int i = 0; i < vetor.length; i++) {
    if (jaPassou.contains(vetor[i])) {
      continue;
    }

    int contador = 0;
    for (int j = 0; j < vetor.length; j++) {
      if (vetor[j] == vetor[i]) {
        contador++;
      }
    }

    print('${vetor[i]} - $contador');
    jaPassou.add(vetor[i]);
  }
}
