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
