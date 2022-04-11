import 'package:flutter/material.dart';
import 'package:section_21/HistoryPage.dart';
import 'package:section_21/add_contacts.dart' as ContactPage;
import 'package:section_21/animasi_page.dart';
import 'package:section_21/bloc/counter_bloc.dart';
import 'package:section_21/bloc/history_bloc/history_bloc.dart';
import 'package:section_21/custom_page_route.dart';
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
        onGenerateRoute: (settings) {
          if (settings.name == "/") {
            return CustomPageRoute(child: const Home());
          } else if (settings.name == "/addContacts") {
            return CustomPageRoute(child: const ContactPage.AddContacts());
          }
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
    AnimasiPage()
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
        title: const Text("Phonebook"),
        centerTitle: true,
        backgroundColor: const Color(0xFF219653),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/addContacts");
        },
        tooltip: "Add Contact",
        child: const Icon(Icons.add_call),
        backgroundColor: const Color(0xFF219653),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.animation), label: 'Animation'),
        ],
        selectedIconTheme: const IconThemeData(
          color: Color(0xFF219653),
        ),
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF219653),
        onTap: _onItemTapped,
      ),
    );
  }
}
