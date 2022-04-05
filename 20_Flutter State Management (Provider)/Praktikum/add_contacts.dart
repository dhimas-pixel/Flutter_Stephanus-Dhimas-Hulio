import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_20/contacts_model.dart';
import 'package:section_20/stores/contacts.dart' as contacts_stores;

class AddContacts extends StatefulWidget {
  const AddContacts({Key? key}) : super(key: key);

  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  var _formkey = GlobalKey<FormState>();
  // TextField Nama
  TextEditingController controllerNama = TextEditingController();
  // TextField Nomor Telepon
  TextEditingController controllerNomor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final contactsProvider = Provider.of<contacts_stores.Contacts>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Contact"),
          centerTitle: true,
          backgroundColor: Color(0xFF219653),
        ),
        body: SafeArea(
          child: Container(
            child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: TextField(
                      controller: controllerNama,
                      decoration: InputDecoration(
                        hintText: 'Nama',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4F4F4F),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF219653)),
                        ),
                        contentPadding: EdgeInsets.only(top: 10),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextField(
                      controller: controllerNomor,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Nomor',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4F4F4F),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF219653)),
                        ),
                        contentPadding: EdgeInsets.only(top: 10),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF219653)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        onPressed: () async {
                          if (_formkey.currentState!.validate()) {
                            contactsProvider.add(
                              ContactsModel(
                                  name: controllerNama.text,
                                  number: controllerNomor.text),
                            );
                            Navigator.pop(context);
                          }
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
