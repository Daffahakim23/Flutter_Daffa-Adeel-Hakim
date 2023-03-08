class BangunRuang {
  var panjang;
  var lebar;
  var tinggi;
  var hasil;

  BangunRuang() {
    panjang = 0;
    lebar = 0;
    tinggi = 0;
  }
}

class Balok extends BangunRuang {
  Balok() {
    panjang = 3;
    lebar = 5;
    tinggi = 4;
  }

  volume() {
    hasil = panjang * lebar * tinggi;
    print('Volume Balok = $hasil');
  }
}

class Kubus extends BangunRuang {
  Kubus() {
    panjang = 3;
    lebar = 3;
    tinggi = 3;
  }

  volume() {
    hasil = panjang * lebar * tinggi;
    print('Volume Kubus = $hasil');
  }
}

void main() {
  var balok = Balok();
  var kubus = Kubus();
  balok.volume();
  kubus.volume();
}
