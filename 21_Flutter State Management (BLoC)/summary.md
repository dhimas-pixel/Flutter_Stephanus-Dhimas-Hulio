# 21 Flutter State Management (BLoC)

### State
* State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
* Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah
* ada 2 jenis state dalam flutter, ephemeral state dan app state

### Ephemeral State
* Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, contohnya
    - PageView
    - BottomNavigatorBar
    - Switch Button
* Tidak perlu state management yang kompleks
* Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

### App State
* Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya
    - Login info
    - Pengaturan preferensi pengguna
    - Keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda

### Pendekatan State Management
* setState
  Lebih cocok penggunaannya pada ephemeral state
* Provider
  Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari
* BLoC
  menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logicnya
  
# Task
