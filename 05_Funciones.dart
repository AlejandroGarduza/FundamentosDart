void main() {
  print(greatEveryone());
  print(arrowGreatEveryone());

  print(addTwoNumbers(10, 20));
  print(arrowAddTwoNumbers(5, 3));

  print(addTwoNumbersOptional(50));

  print(greatPerson(name: "Alejandro", saludo: "Hello"));
}

String greatEveryone() {
  return 'Hello Everyone';
}

String arrowGreatEveryone() => 'Hello Everyone';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int arrowAddTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, {int b = 0}) {
  return a + b;
}

String greatPerson({required String name, String saludo = "Hola,"}) {
  return '$saludo $name';
}
