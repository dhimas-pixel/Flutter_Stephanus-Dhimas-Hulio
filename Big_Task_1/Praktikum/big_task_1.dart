import 'dart:io';

void main(List<String> arguments) {
  print("++++++++++++++ Big Task 1 ++++++++++++++\n");
  print("--- Inputan untuk Problem 1 & 2 ---\n");
  stdout.write("Input sebuah angka : ");
  int? input = int.parse(stdin.readLineSync()!);
  var p1 = problem1(input);
  var p2 = problem2(input);
  print("\nProblem 1 : $p1\n");
  print("\nProblem 2 : $p2\n");

  print("--- Inputan untuk Problem 3 & 4 ---\n");
  stdout.write("Input sebuah angka : ");
  int? input2 = int.parse(stdin.readLineSync()!);
  print("\nProblem 3 : ");
  problem3(input2);
  print("\nProblem 4 : ");
  problem4(input2);
}

bool problem1(int input) {
  if (input % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

int problem2(int input) {
  if (input > 180) {
    input -= 180;
    if (input <= 0 || input >= 360) {
      return 0;
    } else {
      return input;
    }
  } else {
    input += 180;
    if (input <= 0 || input >= 360) {
      return 0;
    } else {
      return input;
    }
  }
}

void problem3(int input) {
  // Segitiga Atas
  //untuk menentukan tinggi piramida
  for (int i = 1; i <= input; i++) {
    //Menghitung Jumlah Spasi per Baris
    for (int j = 1; j <= i; j++) {
      stdout.write(" ");
    }
    //Menghitung Jumlah Bintang per Baris
    for (int k = input - ((i * 1) - 1); k >= 1; k--) {
      stdout.write(" *");
    }
    print(""); //Membuat Baris Baru
  }

  // Segitiga Bawah
  //untuk menentukan tinggi piramida
  for (int i = 2; i <= input; i++) {
    //Menghitung Jumlah Spasi per Baris
    for (int j = i; j <= input; j++) {
      stdout.write(" ");
    }
    //Menghitung Jumlah Bintang per Baris
    for (int k = 0; k <= (i * 1) - 1; k++) {
      stdout.write(" *");
    }
    print(''); //Membuat Baris Baru
  }
}

void problem4(int input) {
  //untuk menentukan tinggi
  for (int i = 1; i <= input; i++) {
    //Menghitung Jumlah Spasi per Baris
    for (int j = 1; j < i; j++) {
      stdout.write(" ");
    }
    //Memberikan angka sesuai input
    for (int k = 1; k <= 1; k++) {
      stdout.write("$i");
    }
    print(""); //Membuat Baris Baru
  }
}
