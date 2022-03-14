# 11 Introduction Flutter Widget

### Apa itu Flutter?
Alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web.

### Keunggulan Flutter
* Mudah digunakan dan dipelajari
* Produktivitas tinggi
* Dokumentasi lengkap
* Komunitas yang berkembang

#### Bagian flutter
* SDK (Software Development Kit)
* Framework

#### Struktur Direktori
##### Direktori platform
* android
* ios
* web

##### Direktori project
* lib - ruang kerja utama
* test - aktivitas pengujian

### Widget
#### Deskripsi
* digunakan untuk membentuk antarmuka (UI)
* Berupa class
* Dapat terdiri dari beberapa widget lainnya

### Jenis

#### Stateless Widget
* Tidak bergantung pada perubahan data
* Hanya fokus pada tampilan
* Dibuat dengan extends pada class StatelessWidget

#### Stateful Widget
* Mementingkan pada perubahan data
* Dibuat dengan extends pada class StatefulWidget
* 1 widget menggunakan 2 class (widget dan state)

### Built in Widget
* Widget yang dapat langsung digunakan
* Sudah ter-install bersama flutter

#### Material App
membangun aplikasi dengan desain material

#### Scaffold
Membentuk sebuah halaman

#### AppBar
Membentuk application bar yang terletak pada bagian atas halaman

#### Text
Menampilkan teks
