import 'dart:async';
import 'package:flutter/material.dart';
import 'package:section_16/contact_model.dart';
import 'package:section_16/AddContacts.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/addContacts': (_) => const AddContacts(),
    },
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FutureOr refresh(dynamic value) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
          ),
          IconButton(
            padding: EdgeInsets.only(right: 20),
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => AddContacts());
              Navigator.push(context, route).then(refresh);
            },
            icon: Icon(Icons.add_call),
          ),
        ],
      ),
      body: ContactsPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/addContacts").then(refresh);
        },
        tooltip: "Add Contact",
        child: Icon(Icons.add_call),
      ),
    );
  }
}

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List colors = [
    Colors.red,
    Colors.green,
    Colors.brown,
    Colors.blue,
    Colors.orange
  ];
  Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: ListView.separated(
              itemBuilder: (ctx, i) {
                return ListTile(
                  onTap: () {
                    showModalBottomSheet(
                      context: ctx,
                      builder: (ctx) {
                        return Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                leading: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 50,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: colors[_random.nextInt(5)],
                                child: Text(
                                  items[i].name.substring(0, 1),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12.0)),
                              Text(
                                items[i].name,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                items[i].number,
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5.0)),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  items[i].gender == "Pria"
                                      ? Icon(
                                          Icons.male,
                                          size: 50,
                                          color: Colors.blue,
                                        )
                                      : Icon(
                                          Icons.female,
                                          size: 50,
                                          color: Colors.red,
                                        ),
                                  if (items[i].agama == "Islam") ...[
                                    Icon(
                                      Icons.mosque,
                                      size: 50,
                                      color: Colors.orange,
                                    ),
                                  ] else if (items[i].agama == "Khatolik" ||
                                      items[i].agama == "Kristen") ...[
                                    Icon(
                                      Icons.church,
                                      size: 50,
                                      color: Colors.orange,
                                    ),
                                  ] else if (items[i].agama == "Buddha" ||
                                      items[i].agama == "Tionghoa") ...[
                                    Icon(
                                      Icons.temple_buddhist,
                                      size: 50,
                                      color: Colors.orange,
                                    ),
                                  ] else if (items[i].agama == "Hindu") ...[
                                    Icon(
                                      Icons.temple_hindu,
                                      size: 50,
                                      color: Colors.orange,
                                    ),
                                  ]
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 10.0)),
                              Column(
                                children: items[i].hobi.map((e) {
                                  return e.nilai
                                      ? Text("${e.title}, ")
                                      : const Text('');
                                }).toList(),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10.0)),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  leading: CircleAvatar(
                    child: Text(
                      items[i].name.substring(0, 1),
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: colors[_random.nextInt(5)],
                  ),
                  title: Text(items[i].name),
                  subtitle: Text(items[i].number),
                );
              },
              separatorBuilder: (ctx, i) {
                return Divider();
              },
              itemCount: items.length),
        ),
      ),
    );
  }
}
