import 'dart:io'; //import input output

void main() {
  double hasil = 1;
  print("--- Program Input Faktorial ---\n");

  stdout.write("\nInputkan Faktorial : ");
  double? input = double.parse(stdin.readLineSync()!);

  for (var i = 1; i <= input; i++) {
    hasil = i * hasil;
  }

  print("\nHasil Faktorial dari $input adalah = $hasil");
}
