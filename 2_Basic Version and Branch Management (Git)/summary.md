# 2 Basic Version and Branch Management (Git)

1. Git dan GitHub merupakan dua platform yang didirikan oleh satu perusahaan dengan tujuan sama serta fitur yang berbeda. Namun kedua platform ini sangat membantu pekerjaan programmer dalam menyusun kode script secara tim. Seluruh pekerjaan juga dapat dipantau dan dievaluasi dengan mudah karena penggunaan kontrol sistem.

2. Belajar Mengenai intruksi git contoh :
* git clone: Berfungsi untuk melakukan penyalinan dari repositori Git di internet ke dalam sistem lokal. Clone akan membuat suatu folder baru berisi file-file yang sama dengan yang ada di repositori Git.
* git remote: Berfungsi untuk melihat daftar namespace dari setiap repositori non-lokal (di internet) alias sebuah remote yang terlibat dalam satu direktori Git.
* git pull: Berfungsi untuk menarik perubahan dari salah satu remote ke lokal. Berguna untuk melihat perubahan terakhir yang dilakukan oleh orang lain.
* git push: Berfungsi untuk mengirim perubahan yang kita lakukan pada lokal ke salah satu remote.
* git revert: Berfungsi untuk melakukan rollback untuk kembali ke state yang dicatat dalam sebuah commit. Akan tetapi, tidak melakukan rollback dengan menghapus sejarah commit, melainkan membuat commit baru.
* git branch: Berfungsi untuk membuat branch baru pada repositori Git. Membuat branch baru artinya kita membuat percabangan dalam sejarah commit dalam repositori Git. Jika kita melakukan commit di sebuah branch, maka di branch lain commit itu tidak akan terjadi.
* git checkout: Berfungsi untuk pindah branch atau membuat branch baru. Pada file, checkout berfungsi untuk meng-update file pada working directory.
* git merge: Berfungsi untuk meleburkan dua state dari dua branch. Dalam git merge, branch sumber akan dibuatkan sebuah commit baru khusus untuk menyatakan bahwa telah terjadi merging dengan branch lain.
* git rebase: Berfungsi untuk memindahkan seluruh sejarah commit dari sebuah branch untuk digabung ke ujung (HEAD) branch lain. Bedanya dari merge adalah merge meleburkan state terakhir dari kedua branch sementara rebase memindahkan seluruh sejarah commit.

3. Lalu ada merge no fast forward yaitu dimana kita membuat 1 master dan 1 branch development yang berguna untuk mencegah error yang dimana branch development itu sebagai tempat merge branch" lainnya ketika sudah fix maka dilakukan merge ke master
