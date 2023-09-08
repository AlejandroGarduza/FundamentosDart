abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Delfin extends Mamifero {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print("I belive i can Fly");
}

mixin Caminante {
  void caminar() => print("Estoy caminando");
}

mixin Nadador {
  void nadar() => print("Nada");
}

class Dolphin extends Delfin with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

void main() {
  Dolphin flipper = new Dolphin();
  flipper.nadar();

  Murcielago batman = new Murcielago();
  batman.caminar();
  batman.volar();

  Pato donald = new Pato();
  donald.caminar();
  donald.nadar();
  donald.volar();
}
