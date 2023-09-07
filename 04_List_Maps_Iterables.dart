void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 7, 7, 8, 9, 10];
  print('La lista original es: $numbers');
  print('La lista tiene: ${numbers.length} elementos');
  print('El index 0 es ${numbers[0]}');
  print('El index 5 es ${numbers[5]}');

  print('El primero de la lista es: ${numbers.first}');
  print('El ultimo de la lista es: ${numbers.last}');

  print('La lista invertida es: ${numbers.reversed}');

  //Reversed convierte la lista a un iterable
  final reversedNumbers = numbers.reversed;
  print('Iterables: $reversedNumbers');
  print('Lista: ${reversedNumbers.toList()}');

  /**
   * Podemos convertir un iterable a un set
   * Los set son como las listas pero no repiten valores so no vamos a tener
   * valores duplicados, van separados por "," y no son key - value
   */
  print('Conjunto: ${reversedNumbers.toSet()}');
  //Lo convertimos a lista otravez
  print('Lista otravez sin repetir: ${reversedNumbers.toSet().toList()}');

  final numbersGreatThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('Numeros > 5: $numbersGreatThan5');
  print('Numeros > 5 sin repetecion: ${numbersGreatThan5.toSet()}');
}
