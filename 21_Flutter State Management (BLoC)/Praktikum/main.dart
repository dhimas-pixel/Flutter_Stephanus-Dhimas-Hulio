import 'package:flutter/material.dart';
import 'package:section_21/HistoryPage.dart';
import 'package:section_21/add_contacts.dart' as ContactPage;
import 'package:section_21/bloc/counter_bloc.dart';
import 'package:section_21/bloc/history_bloc/history_bloc.dart';
import 'package:section_21/homepage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => HistoryBloc()),
      ],
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

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HistoryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phonebook"),
        centerTitle: true,
        backgroundColor: Color(0xFF219653),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/addContacts");
        },
        tooltip: "Add Contact",
        child: Icon(Icons.add_call),
        backgroundColor: Color(0xFF219653),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        ],
        selectedIconTheme: IconThemeData(
          color: Color(0xFF219653),
        ),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
