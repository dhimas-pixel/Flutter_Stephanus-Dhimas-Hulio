class BangunRuang {
  // properti bangun ruang
  double? panjang, lebar, tinggi;

  // Method untuk rumus volume balok
  volume() {
    double volume = panjang! * lebar! * tinggi!;
    return "Volume Balok : $volume";
  }
}

class Kubus extends BangunRuang {
  // properti sisi untuk kubus
  double? sisi;
  // di override agar menggunakan proses atau rumus kubus
  @override
  volume() {
    double volume = sisi! * sisi! * sisi!;
    return "Volume Kubus : $volume";
  }
}

class Balok extends BangunRuang {
  // memakai proses atau rumus langsung dari bangunruang
  @override
  volume() {
    return super.volume();
  }
}
