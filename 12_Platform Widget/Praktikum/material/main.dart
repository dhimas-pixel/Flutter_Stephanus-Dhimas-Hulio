import 'package:flutter/material.dart';
import 'package:section_12/chart_model.dart';
import 'package:section_12/DrawerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Telegarm"),
          backgroundColor: Color(0xFF0088cc),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        drawer: DrawerScreen(),
        body: ListView.separated(
            itemBuilder: (ctx, i) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(items[i].profileUrl),
                ),
                title: Text(
                  items[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(items[i].message),
                trailing: Text(items[i].time),
              );
            },
            separatorBuilder: (ctx, i) {
              return Divider();
            },
            itemCount: items.length),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.create,
              color: Colors.white,
            ),
            backgroundColor: Color(0xFF65a9e0),
            onPressed: () {}),
      ),
    );
  }
}
