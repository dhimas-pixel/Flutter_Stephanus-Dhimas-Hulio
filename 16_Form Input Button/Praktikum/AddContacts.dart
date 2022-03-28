import 'package:flutter/material.dart';

class AddContacts extends StatefulWidget {
  const AddContacts({Key? key}) : super(key: key);

  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  var inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Create New Contacts"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukkan Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    prefix: Padding(
                      padding: EdgeInsets.only(left: 25),
                    ),
                  ),
                  controller: inputController,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukkan Nomor Telepon",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    prefix: Padding(
                      padding: EdgeInsets.only(left: 25),
                    ),
                  ),
                  controller: inputController,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
