import 'dart:io';

import 'package:dart_oop1/dart_oop1.dart' as dart_oop1;

void main(List<String> arguments) {
  var input;
  Hewan hewan = Hewan();
  Mobil mobil = Mobil();
  while (input != "n") {
    if (mobil.totalMuatan() < mobil.kapasitas) {
      print("-------------------------------------------");

      stdout.write("Masukkan Nama Hewan : ");
      var nama = stdin.readLineSync();

      stdout.write("Masukkan Berat Hewan : ");
      int berat = int.parse(stdin.readLineSync()!);
      mobil.tambahMuatan(nama!, berat);

      print("\nTotal Muatan " +
          mobil.muatan.length.toString() +
          " dengan berat " +
          mobil.totalMuatan().toString() +
          " Kg");

      stdout.write("\nMau Input muatan lagi? [y/n] => ");
      input = stdin.readLineSync();
    } else {
      print("\nMuatan sudah mencapai maksimal!");
      break;
    }
  }
  print("\nTotal Muatan " +
      mobil.muatan.length.toString() +
      " dengan berat " +
      mobil.totalMuatan().toString() +
      " Kg");
}

// Class Hewan
class Hewan {
  List<int> berat = [];
}

// Class Mobil
class Mobil {
  Hewan hewan = Hewan();
  List<dynamic> muatan = [];
  int kapasitas = 100;

// Method tambah muatan
  void tambahMuatan(String tambah, int berat) {
    muatan.add(tambah);
    hewan.berat.add(berat);
  }

// method total muatan
  int totalMuatan() {
    var total = 0;
    for (var item in hewan.berat) {
      total += item;
    }
    return total;
  }
}
