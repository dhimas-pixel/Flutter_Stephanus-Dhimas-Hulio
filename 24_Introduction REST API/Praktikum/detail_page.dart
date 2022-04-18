import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_20/model/contacts_model.dart';
import 'package:section_20/stores/contacts.dart';
import 'package:section_20/stores/detail_contacts.dart';

class DetailPage extends StatelessWidget {
  final ContactsModel contactsModel;
  const DetailPage({Key? key, required this.contactsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactsProvider = Provider.of<DetailContacts>(context);
    contactsProvider.setContactsID(contactsModel.id);

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () async {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Consumer<DetailContacts>(builder: (context, value, child) {
            if (value.isProcessing) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(value.contactsModel.id.toString()),
                  Text(value.contactsModel.name),
                  Text(value.contactsModel.phone),
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
