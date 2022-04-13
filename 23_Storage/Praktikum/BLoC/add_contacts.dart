import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:section_21/bloc/counter_bloc.dart' as Contact;
import 'package:section_21/model/contacts_model.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Contact"),
          centerTitle: true,
          backgroundColor: Color(0xFF219653),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Form(
              key: _formkey,
              child: BlocBuilder<Contact.CounterBloc, Contact.CounterState>(
                builder: (BuildContext ctx, state) {
                  return Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 40),
                        child: TextField(
                          controller: controllerNama,
                          decoration: InputDecoration(
                            hintText: 'Name',
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
                            hintText: 'Phone Number',
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            onPressed: () async {
                              if (_formkey.currentState!.validate()) {
                                ctx.read<Contact.CounterBloc>().add(
                                      Contact.AddContacts(
                                        contactsModel: ContactsModel(
                                          name: controllerNama.text,
                                          number: controllerNomor.text,
                                        ),
                                      ),
                                    );
                              }
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Submit",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
