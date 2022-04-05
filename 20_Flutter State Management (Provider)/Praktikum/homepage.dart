import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_20/stores/contacts.dart' as contacts_stores;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final contactsProvider = Provider.of<contacts_stores.Contacts>(context);
    List colors = [
      Colors.red,
      Colors.green,
      Colors.brown,
      Colors.blue,
      Colors.orange
    ];
    Random _random = Random();

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: ListView.separated(
          itemBuilder: (ctx, i) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(
                  contactsProvider.getContacts[i].name.substring(0, 1),
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: colors[_random.nextInt(5)],
              ),
              title: Text(contactsProvider.getContacts[i].name),
              subtitle: Text(contactsProvider.getContacts[i].number),
            );
          },
          separatorBuilder: (ctx, i) {
            return Divider();
          },
          itemCount: contactsProvider.getContacts.length,
        ),
      ),
    );
  }
}
