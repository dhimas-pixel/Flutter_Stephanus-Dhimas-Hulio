import 'dart:io'; //import input output

void main() {
  print("--- Program Input Nilai ---\n");

  stdout.write("\nInputkan Nilai : ");
  double? nilai = double.parse(stdin.readLineSync()!); //Input Nilai

  // Kondisi
  if (nilai > 70) {
    print("\nMendapatkan Nilai A");
  } else if (nilai > 40) {
    print("\nMendapatkan Nilai B");
  } else if (nilai > 0) {
    print("\nMendapatkan Nilai C");
  } else {
    print("\nTeks Kosong");
  }
}

