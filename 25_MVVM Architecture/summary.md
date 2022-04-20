# 25 MVVM Architecture

### MVVM Architecture

#### Deskripsi
* Memisahkan logic dengan tampilan (View) ke dalam ViewModel

#### Keuntungan
* Reusability = jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama
* Maintainability = mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic
* Testability = pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian

#### Struktur Direktori
* Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut
* Tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel

#### Model
* Bentuk data yang akan digunakan, dibuat dalam bentuk class
* Data-data yang dimuat, diletakkan pada property

#### ViewModel
* Menyimpan data-data dan logic yang diperlukan halaman ContactScreen
* Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga

# Task

### MVVM 
* ![image](https://user-images.githubusercontent.com/76719135/164194391-3747c0c0-b540-40d1-8142-623bb35a4b94.png)

### Page Baru
* ![1](https://user-images.githubusercontent.com/76719135/164194827-e102bb74-0ee0-4a01-a86b-12af51607f92.PNG)
* ![2](https://user-images.githubusercontent.com/76719135/164194839-40abf4ca-5753-4170-9ceb-c86ca9debe2f.PNG)
* ![3](https://user-images.githubusercontent.com/76719135/164194863-765d0008-bd2a-461e-93c9-e0213c66a12e.PNG)

### Demo
![Demo](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/25_MVVM%20Architecture/Screenshots/Demo.mp4)
