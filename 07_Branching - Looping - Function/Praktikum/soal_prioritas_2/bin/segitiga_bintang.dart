void main(List<String> arguments) {
  int panjang = 5;
  var hasil = "";
  for (var i = 0; i <= panjang; i++) {
    for (var j = 0; j <= i; j++) {
      hasil += "* ";
    }
    hasil += '\n';
  }
  print(hasil);
}

// void main() {
//   int baris = 7;
//   var hasil = "";
//   for (int i = 0; i < baris; i++) {
//     for (int j = 0; j <= i; j++) {
//       print("* ");
//     }
//     print("\n");
//   }
// }

// import 'dart:io';

// void main() {
//   stdout.write('Masukkan sebuah bilangan : ');
//   int bilangan = int.parse(stdin.readLineSync()!);

//   print('Faktor dari $bilangan adalah: ');
//   for (int i = 1; i <= bilangan; i++) {
//     if (bilangan % i == 0) {
//       print(i);
//     }
//   }
// }