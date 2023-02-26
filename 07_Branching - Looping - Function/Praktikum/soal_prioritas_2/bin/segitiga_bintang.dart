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
