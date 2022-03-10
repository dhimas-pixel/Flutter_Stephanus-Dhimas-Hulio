class Matematika {
  // Method null
  hasil() {
    return null;
  }
}

class Kpk implements Matematika {
  // properti x dan y
  int? x, y;
  // method proses untuk mencari kpk
  @override
  hasil() {
    int kpk = 0;
    int i = 1;
    while (i <= y!) {
      kpk += x!;
      if (kpk % y! == 0) break;
      i = i + 1;
    }
    return "KPK = $kpk";
  }
}

class Fpb implements Matematika {
  // properti x dan y
  int? x, y, r;
  // method proses untuk mencari kpk
  @override
  hasil() {
    r = x! % y!;
    while (r != 0) {
      x = y!;
      y = r;
      r = x! % y!;
    }
    return "FPB = $y";
  }
}
