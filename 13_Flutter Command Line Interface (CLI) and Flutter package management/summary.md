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

