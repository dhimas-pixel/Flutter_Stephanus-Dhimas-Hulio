import 'package:flutter/material.dart';
import 'package:section_21/add_contacts.dart' as ContactPage;
import 'package:section_21/bloc/counter_bloc.dart';
import 'package:section_21/homepage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/addContacts': (context) => ContactPage.AddContacts(),
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

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
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: ((context) => ContactPage.AddContacts())));
        },
        tooltip: "Add Contact",
        child: Icon(Icons.add_call),
        backgroundColor: Color(0xFF219653),
      ),
    );
  }
}
