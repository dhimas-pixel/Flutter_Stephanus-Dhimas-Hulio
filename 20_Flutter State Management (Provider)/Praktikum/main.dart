import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_20/add_contacts.dart';
import 'package:section_20/homepage.dart';
import 'package:section_20/stores/contacts.dart' as contacts_stores;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => contacts_stores.Contacts())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/homepage': (_) => const HomePage(),
          '/addContacts': (_) => const AddContacts(),
        },
        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phonebook"),
        centerTitle: true,
        backgroundColor: Color(0xFF219653),
      ),
      body: HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/addContacts");
        },
        tooltip: "Add Contact",
        child: Icon(Icons.add_call),
        backgroundColor: Color(0xFF219653),
      ),
    );
  }
}
