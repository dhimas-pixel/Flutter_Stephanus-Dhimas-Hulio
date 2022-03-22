# 14 Flutter Layout

### Apa itu Layout?
* Untuk mengatur tata letak
* Layout berbentuk widget yang mengatur widget di dalamnya

### Single-child Layout

#### Container
* Membuat sebuah box
* Membungkus widget lain
* Box memiliki margin, padding, dan border

#### Center
* Membuat sebuah box
* Membungkus widget lain
* Memenuhi lebar dan tinggi ruang di luarnya
* Meletakkan widget berada di bagian tengah

#### SizedBox
* Membuat sebuah box
* Membungkus widget lain
* Box dapat diatur lebar dan tingginya
* Lebih sederhana dari container

### Multi-child Layout

#### Column
* Mengatur widgets secara vertikal

#### Listview
* Mengatur widgets dalam bentuk list
* Memiliki kemampuan scroll

#### GridView
* Mengatur widgets dalam bentuk galeri

### MainAxisSize
* Menentukan seberapa banyak space menempati main axis
* Main axis dari row adalah horizontal
* Main axis dari column adalah vertikal
* Properti mainAxisSize memiliki dua values, MainAxisSize.max dan MainAxisSize.min
* MainAxisSize.max menempati semua space dari main axis
* MainAxisSize.min tidak memiliki extra space, hanya untuk children nya saja

### MainAxisAlignment
* Properti ini digunakan Row dan Column untuk memposisikan children mereka di extra space yang ada
* Memiliki 6 values :
    * MainAxisAlignment.start
    * MainAxisAlignment.end
    * MainAxisAlignment.center
    * MainAxisAlignment.spaceBetween
    * MainAxisAlignment.spaceEvenly
    * MainAxisAlignment.spaceAround

### CrossAxisAlignment
* Properti ini digunakan Row dan Column untuk memposisikan children mereka pada cross axis
* Cross Axis dari Row adalah vertikal dan Cross Axis dari Column adalah horizontal
* Memiliki 5 values :
    * CrossAxisAlignment.start
    * CrossAxisAlignment.end
    * CrossAxisAlignment.center
    * CrossAxisAlignment.stretch
    * CrossAxisAlignment.baseline
