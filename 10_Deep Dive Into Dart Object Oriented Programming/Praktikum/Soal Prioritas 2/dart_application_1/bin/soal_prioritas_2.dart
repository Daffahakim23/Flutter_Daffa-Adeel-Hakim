abstract class Kelipatan {
  void fpb();
  void kpk();
}

class kelipatan implements Kelipatan {
  @override
  fpb() {
    int x = 24;
    int y = 36;

    int hasil = hitungfpb(x, y);

    print("FPB dari $x dan $y adalah $hasil");
  }

  int hitungfpb(int a, int b) {
    if (b == 0) {
      return a;
    } else {
      return hitungfpb(b, a % b);
    }
  }

  kpk() {
    int x = 24;
    int y = 36;

    int hasil = hitungkpk(x, y);

    print("KPK dari $x dan $y adalah $hasil");
  }

  int hitungkpk(int a, int b) {
    int max = a > b ? a : b;
    int result = max;

    while (true) {
      if (result % a == 0 && result % b == 0) {
        break;
      }
      result += max;
    }

    return result;
  }
}

void main() {
  var operation = kelipatan();
  operation.fpb();
  operation.kpk();
}
