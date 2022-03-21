import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:barcode_widget/barcode_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Section 12"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: DefaultTabController(
                length: 2,
                child: Center(
                    child: Column(
                  children: [
                    ButtonsTabBar(
                      backgroundColor: Colors.blueAccent,
                      unselectedBackgroundColor: Colors.grey[300],
                      unselectedLabelStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(
                          icon: Icon(Icons.badge),
                          text: "Badge",
                        ),
                        Tab(
                          icon: Icon(Icons.scanner),
                          text: "Barcode",
                        ),
                      ],
                    ),
                    Expanded(
                        child: TabBarView(children: <Widget>[
                      Center(
                        child: BadgePage(),
                      ),
                      Center(
                        child: ScanPage(),
                      ),
                    ]))
                  ],
                )),
              )),
        ),
      ),
    );
  }
}

class BadgePage extends StatelessWidget {
  const BadgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Chip(
                padding: EdgeInsets.all(0),
                backgroundColor: Colors.deepPurple,
                label: Text('BADGE', style: TextStyle(color: Colors.white)),
              ),
              Badge(
                toAnimate: false,
                shape: BadgeShape.square,
                badgeColor: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
                badgeContent:
                    Text('BADGE', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              BarcodeWidget(
                  data: 'Alterra Academy', barcode: Barcode.code128()),
              BarcodeWidget(data: 'Flutter Asik', barcode: Barcode.code128()),
              BarcodeWidget(
                  data: 'Stephanus Dhimas Hulio', barcode: Barcode.code128()),
            ],
          ),
        ),
      ),
    );
  }
}
