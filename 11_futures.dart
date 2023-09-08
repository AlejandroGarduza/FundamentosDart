void main() {
  print('Inicio del programa');

  httpGet('http://trashmarket.bio').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    return 'Respuesta petición http';
    throw 'error en la petición http';
  });
}
