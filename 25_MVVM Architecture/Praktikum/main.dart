import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_20/screen/detail_page.dart';
import 'package:section_20/screen/homepage.dart';
import 'package:section_20/screen/add_contacts.dart';
import 'package:section_20/model/contacts_model.dart';
import 'package:section_20/stores/contacts.dart' as contacts_stores;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => contacts_stores.Contacts()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/homepage': (_) => const HomePage(),
          '/addContacts': (_) => const AddContacts(),
          '/detailpage': (context) => DetailPage(
                contactsModel:
                    ModalRoute.of(context)?.settings.arguments as ContactsModel,
              ),
        },
        home: const MyApp(),
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
        title: const Text("Phonebook"),
        centerTitle: true,
        backgroundColor: const Color(0xFF219653),
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/addContacts");
        },
        tooltip: "Add Contact",
        child: const Icon(Icons.add_call),
        backgroundColor: const Color(0xFF219653),
      ),
    );
  }
}
