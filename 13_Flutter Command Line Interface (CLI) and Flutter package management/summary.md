# 13 Flutter Command Line Interface (CLI) and Flutter package management

### Flutter CLI
Deskripsi
* Alat yang digunakan untuk berinteraksi dengan Flutter SDK
* Perintah dijalankan dalam terminal

### Important CLI Commands
* Flutter Doctor : Perintah untuk menampilkan informasi software yang dibutuhkan flutter
* Flutter Create : Perintah untuk membuat project aplikasi flutter baru di directory tertentu
* Flutter Run : Perintah untuk menjalankan project aplikasi di device yang tersedia
* Flutter Emulator : Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru
* Flutter Channel : Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini
* Flutter Pub : 
    * Flutter Pub Add, untuk menambahkan packages ke dependencies yang ada di pubscpec.yml
    * Flutter Pub Get, untuk mendownload semua packages atau dependencies yang ada di pubspec.ymal
* Flutter Build : Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore, dll
* Flutter Clean : 
    * Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator
    * Perintah ini akan memperkecil ukuran project tersebut

### Packages Management
Deskripsi
* Flutter mendukung sharing packages
* Packages dibuat developers lain
* Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau form scratch
* Mendapatkan packages di website pub.dev

Cara menambah packages :
* Cari packages di pub.dev
* Copy baris dependencies yang ada di bagian installing 
* Buka pubspec.yaml
* Paste barisnya dibawah dependencies pubspec.yaml
* Run flutter pub get di terminal
* Import package di file dart agar bisa digunakan 
* Stop atau restart aplikasi jika dibutuhkan

# Task
### Source Code
Pertama saya membuat kelas MyApp sebagain main nya
dan memakai button tab yang berfungsi untuk memanggil page lain
* ![1](https://user-images.githubusercontent.com/76719135/159219834-c40aac05-6fe0-45a1-a2fa-96c8d47be2a4.PNG)
* ![2](https://user-images.githubusercontent.com/76719135/159219843-03e0d66f-cb56-4079-a001-814cb7607d91.PNG)

Kelas BadgePage yang berisi task 1
* ![3](https://user-images.githubusercontent.com/76719135/159219877-18757991-aec5-4b3d-9676-56f490423b87.PNG)

Kelas ScanPage yang berisi task 2
* ![4](https://user-images.githubusercontent.com/76719135/159219900-8c93e1f7-a907-4575-a182-c5d1e36b76f2.PNG)

### Output
Task 1
* ![Output 1](https://user-images.githubusercontent.com/76719135/159219996-2a38ebe9-a809-4399-9e7a-b6eed285fc3c.jpg)

Task 2
* ![Output 2](https://user-images.githubusercontent.com/76719135/159220011-7da26ab6-2fec-460c-b799-af9c4466ed48.jpg)

### Demo
![Demo](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/13_Flutter%20Command%20Line%20Interface%20(CLI)%20and%20Flutter%20package%20management/Screenshots/Demo.mp4)
