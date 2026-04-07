import 'dart:io';

void main() {
  stdout.write('Tamanho do primeiro vetor: ');
  int n1 = int.parse(stdin.readLineSync()!);

  List<int> v1 = [];
  print('Digite os elementos do primeiro vetor em ordem:');
  for (int i = 0; i < n1; i++) {
    stdout.write('v1[$i]: ');
    v1.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write('\nTamanho do segundo vetor: ');
  int n2 = int.parse(stdin.readLineSync()!);

  List<int> v2 = [];
  print('Digite os elementos do segundo vetor em ordem:');
  for (int i = 0; i < n2; i++) {
    stdout.write('v2[$i]: ');
    v2.add(int.parse(stdin.readLineSync()!));
  }

  List<int> v3 = [];
  int i = 0, j = 0;

  while (i < v1.length && j < v2.length) {
    if (v1[i] <= v2[j]) {
      v3.add(v1[i]);
      i++;
    } else {
      v3.add(v2[j]);
      j++;
    }
  }

  while (i < v1.length) {
    v3.add(v1[i]);
    i++;
  }

  while (j < v2.length) {
    v3.add(v2[j]);
    j++;
  }

  print('\nTerceiro vetor ordenado:');
  print(v3);
}
