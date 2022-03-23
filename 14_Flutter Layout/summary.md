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

# Task
### Source Code
Pertama saya membuat kelas user_model untuk memanggil data dummy api nya sesuai nama nya
* ![user class](https://user-images.githubusercontent.com/76719135/159662041-df12db0f-be33-4fd5-b880-cf0e4997d245.PNG)

Lalu saya membuat kelas repo untuk mendapatkan data dummy api nya
* ![repo class](https://user-images.githubusercontent.com/76719135/159662228-e10f9c99-de83-43fe-8faa-9187f7b0fc29.PNG)

Lalu ke kelas Main
* ![1](https://user-images.githubusercontent.com/76719135/159662323-aec4fcf6-e3ba-4583-ae99-3e1fee1a6def.PNG)

Saya memakai bottom navigator untuk memanggil setiap tampilan
* ![2](https://user-images.githubusercontent.com/76719135/159662429-ebf76f62-d0db-4cb7-8d67-42fc415d0d9f.PNG)
* ![3](https://user-images.githubusercontent.com/76719135/159662457-dda88c31-d39f-4e17-b665-dc51422bdf5a.PNG)

lalu membuat kelas GridPage untuk membuat grid layout
* ![4](https://user-images.githubusercontent.com/76719135/159662545-c1c5e119-2130-4fd4-90c2-f07a63e8c278.PNG)

saya membuat kelas CircleIcons untuk mempermudah memanggil layout nya
* ![5](https://user-images.githubusercontent.com/76719135/159662682-dd9a4e1c-c164-43ca-b2e1-a56ea0935946.PNG)

lalu membuat kelas ListPage untuk membuat list layout
* ![6](https://user-images.githubusercontent.com/76719135/159662815-a0a6e36c-40e9-405e-801b-bf7fb29e216c.PNG)

disini saya memakai ListView dengan properti seperated Untuk list yang bersifat dinamis, dengan widget ini dapat menyisipkan widget di antara item list.
* ![7](https://user-images.githubusercontent.com/76719135/159663183-517d037c-544b-4dd8-a65b-b73bb11f0abf.PNG)

### Output
* ![list](https://user-images.githubusercontent.com/76719135/159663927-7e55bb81-11fa-4674-90c8-04effec477a4.jpg)
* ![grid](https://user-images.githubusercontent.com/76719135/159663944-a0a591e8-44ee-43ef-a4d5-ad2eeda5ba96.jpg)

### Demo
* ![Demo](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/14_Flutter%20Layout/Screenshots/Demo.mp4)




