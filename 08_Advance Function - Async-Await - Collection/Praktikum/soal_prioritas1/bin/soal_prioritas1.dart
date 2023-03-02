class AngkaPengali {
  var angkapengali = 2;
}

class ListAngka {
  var isi = [1, 2, 3, 4, 5];
}

void main() {
  var h1 = AngkaPengali();
  var h2 = ListAngka();

  for (int i = 0; i < h2.isi.length; i++) {
      h2.isi[i] *= h1.angkapengali;
  }
  
  return print(h2.isi);
}
