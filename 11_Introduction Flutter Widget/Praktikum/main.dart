import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Membuat bar
        home: Scaffold(
      appBar: AppBar(
        title: Text("Task Section 11"),
        centerTitle: true,
        // memberi warna di bar
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.cyan, Colors.greenAccent])),
        ),
      ),
      // memanggil widget konten
      body: Konten(),
    ));
  }
}

class Konten extends StatefulWidget {
  const Konten({Key? key}) : super(key: key);

  @override
  State<Konten> createState() => _KontenState();
}

class _KontenState extends State<Konten> {
  int _counter = 0;

// memakai initState agar fungsi dijalankan diawal
  initState() {
    _incrementCounter();
  }

// membuat fungsi perhitungan tiap detik
  _incrementCounter() async {
    while (_counter >= 0) {
      await Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          _counter++;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // membuat widget baru yang berisi konten
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          // membuat lingkaran dan memberi warna
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.deepOrange, Colors.yellow])),
          child: Center(
              // memanggil variabel angka yang akan berubah tiap detik
              child: Text("$_counter",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 50))),
        ),
      ),
    );
  }
}
