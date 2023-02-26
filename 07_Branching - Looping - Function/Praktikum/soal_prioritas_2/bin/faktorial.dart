import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah bilangan : ');
  int bilangan = int.parse(stdin.readLineSync()!);

  print('Faktor dari $bilangan adalah: ');
  for (int i = 1; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      print(i);
    }
  }
}