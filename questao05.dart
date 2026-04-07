import 'dart:io';
/*
O código foi feito no VS Code, para rodar no VSC, é necessário:
1. Abrir o terminal integrado (Ctrl + `)
2. Navegar até o diretório onde o arquivo questao05.dart (Exemplo: cd questao05.dart) está localizado
3. Executar o comando: dart run questao05.dart
4. Digitar o que se pede e confirmar
*/
String classificarPeso(double peso) {
  if (peso <= 2) {
    return 'Baixo Peso';
  } else if (peso <= 4) {
    return 'Normal';
  } else {
    return 'Alto Peso';
  }
}
void main() {
  List<Map<String, dynamic>> recem = [];
 
  print('=== Cadastro de Recém-Nascidos (nome "FIM" para encerrar) ===\n');
 
  while (true) {
    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!.trim();
 
    if (nome.toUpperCase() == 'FIM') break;
 
    stdout.write('Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.trim().toUpperCase();
 
    stdout.write('Peso (kg): ');
    double peso = double.parse(stdin.readLineSync()!);
 
    String classif = classificarPeso(peso);
    recem.add({
      'nome': nome,
      'sexo': sexo,
      'peso': peso,
      'classificacao': classif,
    });
 
    print('---');
  }
  if (recem.isEmpty) {
    print('Nenhum recém-nascido cadastrado.');
    return;
  }
  print('\n--- Resultados ---');
 
  // a) Para cada recém-nascido: nome, sexo e classificação
  print('\na) Lista de recém-nascidos:');
  for (var r in recem) {
    print('   Nome: ${r['nome']} | Sexo: ${r['sexo']} | Classificação: ${r['classificacao']}');
  }
 
  // b) Nome do recém-nascido do sexo feminino com maior peso
  var femininas = recem.where((r) => r['sexo'] == 'F').toList();
  if (femininas.isNotEmpty) {
    femininas.sort((a, b) => b['peso'].compareTo(a['peso']));
    print('\nb) Recém-nascida feminina com maior peso: ${femininas.first['nome']} (${femininas.first['peso']} kg)');
  } else {
    print('\nb) Nenhuma recém-nascida do sexo feminino cadastrada.');
  }
 
  // c) Percentual em cada classificação
  int totalBaixo = recem.where((r) => r['classificacao'] == 'Baixo Peso').length;
  int totalNormal = recem.where((r) => r['classificacao'] == 'Normal').length;
  int totalAlto = recem.where((r) => r['classificacao'] == 'Alto Peso').length;
  int total = recem.length;
 
  print('\nc) Percentual por classificação de peso:');
  print('   Baixo Peso : ${((totalBaixo / total) * 100).toStringAsFixed(1)}% ($totalBaixo de $total)');
  print('   Normal     : ${((totalNormal / total) * 100).toStringAsFixed(1)}% ($totalNormal de $total)');
  print('   Alto Peso  : ${((totalAlto / total) * 100).toStringAsFixed(1)}% ($totalAlto de $total)');
}