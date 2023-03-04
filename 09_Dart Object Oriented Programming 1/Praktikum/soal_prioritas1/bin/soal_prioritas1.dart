class Hewan {
  var sapi = 50;
  var domba = 25;
  var kambing = 25;
}

class Mobil {
  var kapasitas = 100;
  var muatan = {
    'sapi': 50,
    'kambing': 25,
  };
}

void tambahMuatan() {
  var h1 = Mobil();
  int sum = 0;

  for (int num in h1.muatan.values) {
    sum += num;
  }

  if (sum < h1.kapasitas) {
    h1.muatan['domba'] = 25;
    print('Kapasitas mobil sesuai');
  } else {
    print('Kapasitas mobil belum sesuai');
  }
}

void main() {
  tambahMuatan();
}