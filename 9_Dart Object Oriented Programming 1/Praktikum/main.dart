import 'dart:io';

import 'package:dart_oop1/dart_oop1.dart' as dart_oop1;

void main(List<String> arguments) {
  var input, maks = 5;
  Hewan hewan = Hewan();
  Mobil mobil = Mobil();
  while (input != "n") {
    if (mobil.totalMuatan() < maks) {
      // List Berat Hewan
      for (var item in hewan.berat.keys) {
        print("Hewan: $item dengan Berat ${hewan.berat[item]} Kg");
      }
      print("-------------------------------------------");
      stdout.write("Masukkan Nama Hewan : ");
      var nama = stdin.readLineSync();
      mobil.tambahMuatan(nama!);
      print("\nTotal Muatan : " + mobil.totalMuatan().toString());
      stdout.write("\nMau Input muatan lagi? [y/n] => ");
      input = stdin.readLineSync();
    } else {
      print("\nMuatan sudah mencapai maksimal!");
      print("Total Muatan : " + mobil.totalMuatan().toString());
      break;
    }
  }
  print(mobil.muatan.toString());
}

// Class Hewan
class Hewan {
  Map berat = {"Ayam": 5, "Sapi": 30, "Kambing": 15, "Beruang": 50};
}

// Class Mobil
class Mobil {
  List<dynamic> muatan = [];

// Method tambah muatan
  void tambahMuatan(String tambah) {
    muatan.add(tambah);
  }

// method total muatan
  int totalMuatan() {
    return muatan.length;
  }
}
