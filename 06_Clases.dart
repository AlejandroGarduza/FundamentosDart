void main() {
  final Hero spiderman = new Hero(name: 'Peso Pluma', power: 'Lanzar Telaraña');

  print(spiderman);

  print(spiderman.name);
  print(spiderman.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin Poder'});

  @override
  String toString() {
    return '${this.name} - $power';
  }
}
