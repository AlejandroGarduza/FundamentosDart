void main() {
  final Hero ironman =
      new Hero(name: 'Tony Stark', power: 'Money', isAlive: false);

  print(ironman);

  final Map<String, dynamic> rawJson = {
    'name': 'Steve Rogers',
    'power': 'SuperSoldier',
    'isAlive': true
  };

  final Map<String, dynamic> rawError = {
    'name': 'Jon Cena',
    'power ': 'SuperSoldier',
    'isAlive2': true
  };

  final Hero captainAmerica = new Hero.fromJson(rawJson);
  print(captainAmerica);

  final Hero jonCena = new Hero.fromJson(rawError);
  print(jonCena);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'Anonymous',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name - $power - ${isAlive ? 'Vivo' : 'Muerto'}';
  }
}
