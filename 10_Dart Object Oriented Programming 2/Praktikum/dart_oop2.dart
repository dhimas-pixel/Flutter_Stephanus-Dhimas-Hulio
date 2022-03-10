import 'dart:io';
import 'bangun_ruang.dart';
import 'matematika.dart';

void main(List<String> arguments) {
  Kubus kubus = Kubus();
  Balok balok = Balok();

  stdout.write("\nInputkan sisi kubus : ");
  kubus.sisi = double.parse(stdin.readLineSync()!);

  print("\n" + kubus.volume());

  stdout.write("\nInputkan panjang balok : ");
  balok.panjang = double.parse(stdin.readLineSync()!);
  stdout.write("\nInputkan lebar balok : ");
  balok.lebar = double.parse(stdin.readLineSync()!);
  stdout.write("\nInputkan tinggi balok : ");
  balok.tinggi = double.parse(stdin.readLineSync()!);

  print("\n" + balok.volume());
  print("==================================================");

  Kpk kpk = Kpk();
  Fpb fpb = Fpb();

  stdout.write("Inputkan bilangan pertama : ");
  kpk.x = int.parse(stdin.readLineSync()!);
  stdout.write("Inputkan bilangan kedua : ");
  kpk.y = int.parse(stdin.readLineSync()!);

  fpb.x = kpk.x;
  fpb.y = kpk.y;

  print("\n" + kpk.hasil());
  print(fpb.hasil());
}
