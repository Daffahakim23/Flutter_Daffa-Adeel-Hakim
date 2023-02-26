import 'dart:io';

void luaslingkaran() {
  double phi = 22 / 7;

  stdout.write('Masukkan Panjang jari-jari : ');
  int panjang = int.parse(stdin.readLineSync()!);
  print('Faktor dari $panjang adalah: ');
  print(phi * (panjang * panjang));
}

void main() {
  luaslingkaran();
}