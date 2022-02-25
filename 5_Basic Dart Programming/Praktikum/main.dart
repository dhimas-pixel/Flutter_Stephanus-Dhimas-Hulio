import 'dart:ffi';
import 'dart:io'; //import input output

void main() async {
  print("--- Program luas Lingkaran ---\n");

  var sapaan = "Hello"; //variabel string 1

  stdout.write("Nama Depan : ");
  var nm_depan = stdin.readLineSync(); //variabel string 2

  stdout.write("Nama Belakang : ");
  var nm_blkng = stdin.readLineSync(); //variabel string 3

  print("\n$sapaan, $nm_depan $nm_blkng"); //output gabungan 3 string

  stdout.write("\nMasukkan jari-jari lingkaran : ");
  double? r = double.parse(stdin.readLineSync()!); //input jari-jari

  var hasil = await luasLingkaran(r); //variabel hasil
  print("\nHasil Luas Lingkaran : $hasil"); //output hasil
}

Future<double> luasLingkaran(double r) async {
  return Future.delayed(Duration(seconds: 1), () {
    const phi = 3.14;
    return phi * r * r; //function rumus lingkaran
  });
}
