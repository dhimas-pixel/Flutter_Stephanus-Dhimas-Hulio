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

### BLoC
#### contacts
* ![image](https://user-images.githubusercontent.com/76719135/162362356-f8bdfc54-aee3-4e84-a5bb-bfc640eb2cbe.png)
* ![image](https://user-images.githubusercontent.com/76719135/162362435-7a325699-e02e-4586-9d08-367e91185827.png)
* ![image](https://user-images.githubusercontent.com/76719135/162362517-88ba3448-6465-46f9-ae32-dac9fb4652df.png)

#### History
* ![image](https://user-images.githubusercontent.com/76719135/162362794-baaae217-a757-4f3b-b135-1daaf3c6fdb8.png)
* ![image](https://user-images.githubusercontent.com/76719135/162362886-866ec125-837c-47c2-9aa2-6c9860bde584.png)
* ![image](https://user-images.githubusercontent.com/76719135/162363009-0bd24284-367d-49db-b71b-c5e9fb3cd466.png)

### Model
#### history
* ![image](https://user-images.githubusercontent.com/76719135/162363207-479e349c-edf7-46ed-9beb-8807644d1fcc.png)

#### contacts
* ![image](https://user-images.githubusercontent.com/76719135/162363345-d6afd916-d85a-4ba4-89f9-4013e091217e.png)

### Main
* ![image](https://user-images.githubusercontent.com/76719135/162363484-ef3dde41-e47a-4f63-84fc-f5d2230dbd4b.png)
* ![image](https://user-images.githubusercontent.com/76719135/162363528-e8cfac85-85c0-4b1a-b8bd-334bf95515f8.png)
* ![image](https://user-images.githubusercontent.com/76719135/162363570-353f3180-a07e-4504-b052-ccd8fc27e704.png)

### Homepage
* ![image](https://user-images.githubusercontent.com/76719135/162363658-610018f1-132e-418c-bea0-6327f84a8c03.png)
* ![image](https://user-images.githubusercontent.com/76719135/162363690-e0b04358-6f17-4fa3-8985-df13d609e6ee.png)
* ![image](https://user-images.githubusercontent.com/76719135/162363730-a221a4d9-92c9-4ce5-a06a-f43e9d5c410f.png)

### Add Contact
* ![image](https://user-images.githubusercontent.com/76719135/162363799-dc029a3a-8b7f-42ae-bf06-0307fae602ba.png)
* ![image](https://user-images.githubusercontent.com/76719135/162363855-eb6e724e-8a09-4f8c-acfa-4dac8449f528.png)
* ![image](https://user-images.githubusercontent.com/76719135/162363888-153571ba-84ef-43b2-856a-ccba9122de78.png)
* ![image](https://user-images.githubusercontent.com/76719135/162363924-26c6b1db-5274-4d0d-82fa-243864783896.png)
* ![image](https://user-images.githubusercontent.com/76719135/162364028-4af17619-2771-47b4-acdb-28eca77c6db4.png)

### History page
* ![image](https://user-images.githubusercontent.com/76719135/162364091-60e757ae-e862-4c1d-8aae-9300a3da9d5a.png)
* ![image](https://user-images.githubusercontent.com/76719135/162364112-8303c548-6e17-4faa-9dfd-3e5aa2785c38.png)

### Callpage
* ![image](https://user-images.githubusercontent.com/76719135/162364306-1ab78b2b-1f0c-40e1-9233-da08000f5a84.png)
* ![image](https://user-images.githubusercontent.com/76719135/162364428-5c915836-ca42-402c-b186-128e24143566.png)
* ![image](https://user-images.githubusercontent.com/76719135/162364490-45237125-f133-47b2-b578-59fa122365a3.png)
* ![image](https://user-images.githubusercontent.com/76719135/162364528-d9ca0fde-7284-43c0-9e58-100e31ec2089.png)

### Output 


