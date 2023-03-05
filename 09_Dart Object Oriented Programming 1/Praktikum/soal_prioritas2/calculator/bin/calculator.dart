import 'dart:io';

penjumlahan() {
  stdout.write("Masukan Bilangan Pertama: ");
  double bilangan1 = double.parse(stdin.readLineSync()!);

  stdout.write("Masukan Bilangan Kedua: ");
  double bilangan2 = double.parse(stdin.readLineSync()!);

  double result = 0;

  result = bilangan1 + bilangan2;

  print("Result: ${result}");
}

pengurangan() {
  stdout.write("Masukan Bilangan Pertama: ");
  double bilangan1 = double.parse(stdin.readLineSync()!);

  stdout.write("Masukan Bilangan Kedua: ");
  double bilangan2 = double.parse(stdin.readLineSync()!);

  double result = 0;

  result = bilangan1 - bilangan2;

  print("Result: ${result}");
}

perkalian() {
  stdout.write("Masukan Bilangan Pertama: ");
  double bilangan1 = double.parse(stdin.readLineSync()!);

  stdout.write("Masukan Bilangan Kedua: ");
  double bilangan2 = double.parse(stdin.readLineSync()!);

  double result = 0;

  result = bilangan1 * bilangan2;

  print("Result: ${result}");
}

pembagian() {
  stdout.write("Masukan Bilangan Pertama: ");
  double bilangan1 = double.parse(stdin.readLineSync()!);

  stdout.write("Masukan Bilangan Kedua: ");
  double bilangan2 = double.parse(stdin.readLineSync()!);

  double result = 0;

  result = bilangan1 / bilangan2;

  print("Result: ${result}");
}

void main() {
  stdout.write("############################ \n");
  stdout.write("*********Calculator********* \n");
  stdout.write("############################ \n");
  stdout.write("Pilih Operasi (+, -, *, /): ");
  String op = stdin.readLineSync()!;

  switch (op) {
    case "+":
      penjumlahan();
      break;
    case "-":
      pengurangan();
      break;
    case "*":
      perkalian();
      break;
    case "/":
      pembagian();
      break;
    default:
      throw Exception("Invalid operation");
  }

  stdout.write("Apakah ingin menggunakan calculator lagi (y / n): ");
  String again = stdin.readLineSync()!;

  switch (again) {
    case "y":
      return main();
    case "n":
      break;
  }
}
