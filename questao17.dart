import 'dart:io';

List<int> somarVetores(List<int> a, List<int> b) {
  List<int> resultado = [];
  for (int i = 0; i < a.length; i++) {
    resultado.add(a[i] + b[i]);
  }
  return resultado;
}

int somarTodosElementos(List<int> v) {
  int total = 0;
  for (int i = 0; i < v.length; i++) {
    total = total + v[i];
  }
  return total;
}

void main() {
  List<int> v1 = [];
  List<int> v2 = [];

  print("Digite o tamanho dos dois vetores:");
  int tamanho = int.parse(stdin.readLineSync()!);

  print("Digite os elementos do primeiro vetor:");
  for (int i = 0; i < tamanho; i++) {
    v1.add(int.parse(stdin.readLineSync()!));
  }

  print("Digite os elementos do segundo vetor:");
  for (int i = 0; i < tamanho; i++) {
    v2.add(int.parse(stdin.readLineSync()!));
  }

  List<int> v3 = somarVetores(v1, v2);
  print("Terceiro vetor (soma de v1 e v2):");
  print(v3);

  int somaTotal = somarTodosElementos(v3);
  print("A soma de todos os elementos do terceiro vetor é:");
  print(somaTotal);
}
