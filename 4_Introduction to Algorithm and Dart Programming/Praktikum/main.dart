import 'dart:io'; //import input output

void main() {
  print("--- Program luas Lingkaran ---\n");

  stdout.write("Masukkan jari-jari lingkaran: ");
  double? r = double.parse(stdin.readLineSync()!); //input jari-jari

  double hasil = luasLingkaran(r); //variabel hasil
  print("\nHasil Luas Lingkaran : $hasil"); //output hasil

  var awal = "Stephanus";
  var tengah = "Dhimas";
  var akhir = "Hulio";
  var nama = "$awal $tengah $akhir"; //variabel gabungan 3 string

  print("\n $awal $tengah $akhir"); //output string
  print("\n $nama"); //output string
}

double luasLingkaran(double r) {
  return 3.14 * r * r; //function rumus lingkaran
}
