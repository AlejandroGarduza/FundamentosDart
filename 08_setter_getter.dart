import 'dart:math' as math;

void main() {
  final Cuadrado cuadrado = new Cuadrado(2);

  cuadrado.area = 25;

  print('area: ${cuadrado.calcularArea()}');
  print('lado: ${cuadrado.lado}');
  print('get area: ${cuadrado.area}');
}

class Cuadrado {
  double lado = 0;

  double get area {
    return this.lado * this.lado;
  }

  set area(double area) {
    this.lado = math.sqrt(area);
  }

  Cuadrado(double lado) : this.lado = lado;

  double calcularArea() {
    return this.lado * this.lado;
  }
}
