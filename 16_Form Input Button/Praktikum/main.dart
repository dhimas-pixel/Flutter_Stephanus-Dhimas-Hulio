import 'package:flutter/material.dart';
import 'package:section_16/contact_model.dart';
import 'package:section_16/AddContacts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new AddContacts()),
              );
            },
            icon: Icon(Icons.add_call),
          ),
        ],
      ),
      body: ContactsPage(),
    );
  }
}

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: ListView.separated(
              itemBuilder: (ctx, i) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(items[i].gambar),
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
