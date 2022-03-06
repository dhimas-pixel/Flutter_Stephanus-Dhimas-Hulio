# Big Task 1

### Problem 1 - Ganjil atau Genap
Buatlah fungsi yang :
* menerima sebuah angka
* return true jika masukan genap
* return false jika masukan ganji

![source_code](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/soal%201.PNG)

Saya membuat sebuah fungsi dengan nama problem1 dengan parameter int, lalu saya memberi suatu kondisi yang dimana ketika input habis dibagi 2 dengan sisa 0 maka input tersebut bernilai genap, selain itu input bernilai ganjil

### Problem 2 - Azimuth/Back-Azimuth
Buatlah fungsi yang :
* menerima sebuah angka
* jika masukan lebih dari 180 maka return masukan (- 180)
* jika masukan kurang dari 180 maka return masukan (+ 180)
* jika return kurang dari atau sama dengan 0 maka return 0
* jika return lebih dari atau sama dengan 360 maka return 0

![source_code](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/soal%202.PNG)

Saya membuat sebuah fungsi dengan nama problem2 dengan parameter int, lalu saya memberi kondisi jika input lebih dari 180 maka (input - 180) begitu juga sebaliknya jika input kurang dari 180 maka (input + 180), sebelum mengembalikan nilai fungsi tersebut saya memberikan kondisi logical || yang dimana jika hasil input <= 0 atau input >= 360 maka akan return 0

berikut output dari problem 1 & 2

![output](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/Output%201%20%26%202%20(1).PNG)
![output](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/Output%201%20%26%202%20(2).PNG)
![output](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/Output%201%20%26%202%20(3).PNG)
![output](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/Output%201%20%26%202%20(4).PNG)
![output](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/Output%201%20%26%202%20(5).PNG)
![output](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/Output%201%20%26%202%20(6).PNG)

### Problem 3 - Jam Pasir
Buatlah fungsi yang dapat :
* menerima sebuah angka
* menampilkan jam pasir sesuai dengan masukan

![source_code](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/soal%203.PNG)

Saya membuat sebuah fungsi dengan nama problem3 dengan parameter int, jadi terdapat 2 kondisi yaitu segitiga atas dan bawah, lalu saya memberi kondisi 3 perulangan pada tiap segitiga, pertama untuk menentukan tinggi nya, kedua for yang didalam untuk memberikan spasi pada baris, dan ketiga memberikan simbol bintang, lalu memberikan spasi kebawah menggunakan print

### Problem 4 - Diagonal Angka
Buatlah fungsi yang dapat :
* menerima sebuah angka
* menampilkan angka secara diagonal

![source_code](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/soal%204.PNG)

Saya membuat sebuah fungsi dengan nama problem4 dengan parameter int, saya memberikan 3 kondisi perulangan, pertama kondisi untuk menentukan tingginya, kedua memberikan spasi per baris, dan ketiga memberikan angka sesuai input, dan print digunakan untuk memberikan spasi kebawah

Berikut output problem 3 & 4

![output](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/Output%203%20%26%204%20(1).PNG)
![output](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/Output%203%20%26%204%20(2).PNG)
![output](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/Output%203%20%26%204%20(3).PNG)

### Fungsi Main
semua fungsi yang telah saya buat sesuai masing-masing problem saya panggil di fungsi main

![source_code](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Screenshots/main.PNG)

Link Source Code : (https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/Big_Task_1/Praktikum/big_task_1.dart)
