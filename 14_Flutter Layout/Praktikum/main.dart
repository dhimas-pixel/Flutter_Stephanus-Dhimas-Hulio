import 'package:flutter/material.dart';
import 'package:section_14/repo.dart';
import 'package:section_14/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ListPage(),
    GridPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Section 14"),
          centerTitle: true,
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt), label: 'ListView'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_4x4), label: 'GridView'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: [
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
        CircleIcons(iconData: Icons.abc),
      ],
    );
  }
}

class CircleIcons extends StatelessWidget {
  final IconData iconData;
  const CircleIcons({Key? key, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<User> listUser = [];
  Repo repo = Repo();

  getData() async {
    listUser = await repo.getData();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(listUser[i].avatar),
            ),
            title: Text(listUser[i].name),
            subtitle: Text(listUser[i].phone),
          );
        },
        separatorBuilder: (ctx, i) {
          return Divider();
        },
        itemCount: listUser.length);
  }
}
