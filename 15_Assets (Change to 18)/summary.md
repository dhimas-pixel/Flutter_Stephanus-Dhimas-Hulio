# 15_Assets (Change to 18)

### Assets

#### Deskripsi 
* File yang di bundled dan di deployed bersamaan dengan aplikasi
* Tipe - tipe assets, seperti: static data (JSON files), icons, images, dan font file (ttf)

#### Menentukan Assets
* Flutter menggunakan pubspec.yaml
* Pubspec.ymal terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi
* Gunakan karakter " / " untuk memasukkan semua assets dibawah satu directory name

### Image

#### Deskripsi
* Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
* Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP, dan WBMP
* Menampilkan gambar dari project asset dan internet

#### Loading Images
* Gunakan widget image
* Membutuhkan properti image dengan class AssetsImage()
* Menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
* Menggunakan method Image.network, mendapatkan data image melalui internet dengan menggunakan string url nya

### Font

#### Deskripsi 
* Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi
* Penentuan font yang mau dipakai biasa nya oleh UI designer
* Penerapan font menggunakan custom font atau dari package

# Task
### Image Data class, class untuk membuat variabel agar bisa di panggi dengan mudah dan bersifat statis
* ![ImageData class](https://user-images.githubusercontent.com/76719135/160097028-fa0c06cd-d3c9-488d-9e57-e03027bef1a2.PNG)

### Main class, memakai builder untuk memanggil tiap gambar nya dan memberi navigator sesuai index juga yang diambil dari image data class tadi
* ![1](https://user-images.githubusercontent.com/76719135/160097290-8880e598-b762-4538-b6f3-84b278f280cf.PNG)
* ![2](https://user-images.githubusercontent.com/76719135/160097296-2c142eaa-6ae4-4cfc-9203-838cca2416dd.PNG)
* ![3](https://user-images.githubusercontent.com/76719135/160097312-33445b59-ea73-4832-bec4-eb3f8059794c.PNG)

### Output
* ![awal](https://user-images.githubusercontent.com/76719135/160097716-c70d2897-9942-4e46-943f-4a286c1927a5.jpg)
* ![1](https://user-images.githubusercontent.com/76719135/160097743-3af1ccc6-1934-4ae0-a257-40bf5455dae5.jpg)
* ![2](https://user-images.githubusercontent.com/76719135/160097758-8c4b5747-b565-434b-80a0-6cd591a78b77.jpg)
* ![3](https://user-images.githubusercontent.com/76719135/160097774-d15d541e-0ad4-4209-8312-e12e6a120ba7.jpg)

### Demo
![Demo](https://github.com/dhimas-pixel/Flutter_Stephanus-Dhimas-Hulio/blob/main/15_Assets%20(Change%20to%2018)/Screenshots/Demo.mp4)
