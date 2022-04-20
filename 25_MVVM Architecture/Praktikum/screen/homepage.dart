import 'dart:math';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:section_20/model/contacts_model.dart';
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
        padding: const EdgeInsets.all(12.0),
        child: contactsProvider.isProcessing
            ? Center(
                child: LoadingAnimationWidget.threeRotatingDots(
                    color: const Color(0xFF219653), size: 60),
              )
            : ListView.separated(
                itemBuilder: (ctx, i) {
                  return ListTile(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/detailpage",
                        arguments: ContactsModel(
                            id: contactsProvider.getContacts[i].id,
                            name: contactsProvider.getContacts[i].name,
                            phone: contactsProvider.getContacts[i].phone),
                      );
                    },
                    leading: CircleAvatar(
                      child: Text(
                        contactsProvider.getContacts[i].name.substring(0, 1),
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: colors[_random.nextInt(5)],
                    ),
                    title: Text(contactsProvider.getContacts[i].name),
                    subtitle: Text(contactsProvider.getContacts[i].phone),
                  );
                },
                separatorBuilder: (ctx, i) {
                  return const Divider();
                },
                itemCount: contactsProvider.getContacts.length,
              ),
      ),
    );
  }
}
