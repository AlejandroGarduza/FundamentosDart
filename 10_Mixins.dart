abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print("I belive i can Fly");
}

abstract class Caminante {
  void caminar() => print("Estoy caminando");
}

abstract class Nadador {
  void nadar() => print("Nada");
}

class Dolphin extends Mamifero with Nadador {}

class Bat extends Mamifero with Caminante, Volador {}

class Duck extends Ave with Caminante, Volador, Nadador {}

void main() {
  final Dolphin flipper = new Dolphin();
  flipper.nadar();

  final Bat batman = new Bat();
  batman.caminar();
  batman.volar();

  final Duck donald = new Duck();
  donald.caminar();
  donald.nadar();
  donald.volar();
}
