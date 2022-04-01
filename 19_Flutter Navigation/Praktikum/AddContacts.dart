import 'package:flutter/material.dart';
import 'package:section_16/contact_model.dart';

class AddContacts extends StatefulWidget {
  const AddContacts({Key? key}) : super(key: key);

  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  final _formKey = GlobalKey<FormState>();
  // TextField Nama
  TextEditingController controllerNama = TextEditingController();
  // TextField Nomor Telepon
  TextEditingController controllerNomor = TextEditingController();
  // Radio
  String _gender = "";
  void _pilihGender(String value) {
    setState(() {
      _gender = value;
    });
  }

  // Dropdown
  List<String> agama = [
    "Islam",
    "Khatolik",
    "Kristen",
    "Buddha",
    "Hindu",
    "Tionghoa"
  ];
  String _agama = "Islam";
  void pilihAgama(String value) {
    setState(() {
      _agama = value;
    });
  }

  // Checkbox
  final List<DataHobi> hobiKu = [
    DataHobi(title: "Selingkuh"),
    DataHobi(title: "Koleksi Pasangan"),
    DataHobi(title: "Merendah"),
    DataHobi(title: "Tidur"),
  ];

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
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Form(
                key: _formKey,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Nama *",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefix: Padding(
                            padding: EdgeInsets.only(left: 15),
                          ),
                        ),
                        controller: controllerNama,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Nomor Telepon *",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefix: Padding(
                            padding: EdgeInsets.only(left: 15),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        controller: controllerNomor,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nomor Telepon tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      Text(
                        "Jenis Kelamin *",
                        style: TextStyle(fontSize: 17),
                      ),
                      RadioListTile(
                        value: "Pria",
                        title: Text("Pria"),
                        groupValue: _gender,
                        onChanged: (String? value) {
                          _pilihGender(value!);
                        },
                      ),
                      RadioListTile(
                        value: "Wanita",
                        title: Text("Wanita"),
                        groupValue: _gender,
                        onChanged: (String? value) {
                          _pilihGender(value!);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      Text(
                        "Hobi *",
                        style: TextStyle(fontSize: 17),
                      ),
                      // Checkbox
                      Column(
                        children: hobiKu.map((e) {
                          return CheckboxListTile(
                              title: Text(e.title),
                              value: e.nilai,
                              onChanged: (value) {
                                setState(() {
                                  e.nilai = value!;
                                });
                              });
                        }).toList(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Agama *",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.0),
                          ),
                          DropdownButton(
                            onChanged: (String? value) {
                              pilihAgama(value!);
                            },
                            value: _agama,
                            items: agama.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              items.add(
                                ModelContacts(
                                    name: controllerNama.text,
                                    number: controllerNomor.text,
                                    gender: _gender,
                                    agama: _agama,
                                    hobi: hobiKu),
                              );
                              Navigator.pop(context);
                            }
                          },
                          child: const Text(
                            "Submit",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
