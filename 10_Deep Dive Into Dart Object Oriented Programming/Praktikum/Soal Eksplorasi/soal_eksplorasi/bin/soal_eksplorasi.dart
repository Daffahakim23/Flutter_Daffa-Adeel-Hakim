class LuasKeliling {
  var panjang;
  var lebar;
  var sisi;
  var jarijari;
  var hasil;
  var phi;

  LuasKeliling() {
    panjang = 0;
    lebar = 0;
    sisi = 0;
    jarijari = 0;
    phi = 0;
  }
}

class rectangle extends LuasKeliling {
  rectangle() {
    panjang = 5;
    lebar = 2;
  }

  getArea() {
    hasil = panjang * lebar;
    print('Persegi Panjang');
    print(
        'Luas Persegi Panjang dengan panjang $panjang dan lebar $lebar adalah = $hasil');
  }

  getPerimeter() {
    hasil = (panjang * 2) + (lebar * 2);
    print(
        'keliling Persegi Panjang dengan panjang $panjang dan lebar $lebar adalah = $hasil \n');
  }
}

class square extends LuasKeliling {
  square() {
    sisi = 5;
  }

  getArea() {
    hasil = sisi * sisi;
    print('Persegi');
    print('Luas Persegi dengan panjang sisi $sisi adalah = $hasil');
  }

  getPerimeter() {
    hasil = sisi * 4;
    print('keliling Persegi panjang sisi $sisi = $hasil \n');
  }
}

class circle extends LuasKeliling {
  circle() {
    jarijari = 7;
    phi = 3.14;
  }

  getArea() {
    double hasil = phi * (jarijari * jarijari);
    print('Lingkaran');
    print(
        'Luas lingkaran dengan panjang jari - jari $jarijari adalah = $hasil');
  }

  getPerimeter() {
    double hasil = phi * (2 * jarijari);
    print('keliling lingkaran dengan panjang jari - jari $jarijari = $hasil \n');
  }
}

void main() {
  var persegipanjang = rectangle();
  var persegi = square();
  var lingkaran = circle();
  persegipanjang.getArea();
  persegipanjang.getPerimeter();
  persegi.getArea();
  persegi.getPerimeter();
  lingkaran.getArea();
  lingkaran.getPerimeter();
}
