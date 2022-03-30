import 'dart:io';

import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  final String date;
  final Color color;
  final String capt;
  final File file;
  const ContentPage(
      {Key? key,
      required this.date,
      required this.color,
      required this.capt,
      required this.file})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text("Preview"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.file(
                  file,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Container(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Published: " + date,
                        style: TextStyle(fontSize: 17),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("Color: ", style: TextStyle(fontSize: 17)),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: color,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Center(
                  child: Text(
                    capt,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
