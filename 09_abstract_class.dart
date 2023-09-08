void main() {
  final Perro perro = new Perro();
  final Gato gato = new Gato();

  perro.emitirSonido();

  sonidoAnimal(perro);
  sonidoAnimal(gato);

  final superman = new Hero('Clark Kent');
  print(superman);

  final Villano luthor = new Villano('Lex Luthor');
  print(luthor.maldad);
}

abstract class Animal {
  int? patas;

  void emitirSonido();
}

class Perro implements Animal {
  @override
  int? patas;

  @override
  void emitirSonido() => print('Guau Guau');
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

class Gato implements Animal {
  @override
  int? patas;
  int? cola;

  @override
  void emitirSonido() {
    print('Miau Miau');
  }
}

abstract class Personaje {
  String? nombre;
  String? poder;

  Personaje(this.nombre);

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Hero extends Personaje {
  int valentia = 100;
  Hero(super.nombre);
}

class Villano extends Personaje {
  int maldad = 50;

  Villano(super.nombre);
}
