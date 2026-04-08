import 'dart:io';

void main() {
  List<int> v1 = [];
  List<int> v2 = [];
  List<int> v3 = [];
  List<int> v4 = [];

  print("Tamanho do vetor 1:");
  int t1 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t1; i++) {
    print("Elemento ${i + 1}:");
    v1.add(int.parse(stdin.readLineSync()!));
  }

  print("Tamanho do vetor 2:");
  int t2 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t2; i++) {
    print("Elemento ${i + 1}:");
    v2.add(int.parse(stdin.readLineSync()!));
  }

  print("Tamanho do vetor 3:");
  int t3 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t3; i++) {
    print("Elemento ${i + 1}:");
    v3.add(int.parse(stdin.readLineSync()!));
  }

  print("Tamanho do vetor 4:");
  int t4 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t4; i++) {
    print("Elemento ${i + 1}:");
    v4.add(int.parse(stdin.readLineSync()!));
  }

  List<int> v5 = [];
  v5.addAll(v1);
  v5.addAll(v2);
  v5.addAll(v3);
  v5.addAll(v4);
  v5.sort();
  print("Vetor com todos os valores ordenados:");
  print(v5);

  List<int> intersecao = [];
  for (int i = 0; i < v1.length; i++) {
    int atual = v1[i];
    if (v2.contains(atual) && v3.contains(atual) && v4.contains(atual)) {
      if (!intersecao.contains(atual)) {
        intersecao.add(atual);
      }
    }
  }
  print("Valores que tem em todos os 4 vetores:");
  print(intersecao);
}
