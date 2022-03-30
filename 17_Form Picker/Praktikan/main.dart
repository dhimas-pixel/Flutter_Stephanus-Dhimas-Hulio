import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:section_18/preview.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Section 17"),
        centerTitle: true,
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  // File
  File? file;
  // Tanggal
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  final _publishController = TextEditingController();
  // Color
  Color _currentColor = Colors.blue;
  final _colorController = TextEditingController();
  // TextArea
  final _captController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: ListView(
              children: [
                widgetFilePicker(),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                widgetDatePicker(context),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                widgetColorPicker(context),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                widgetCaption(),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(_currentColor),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (file != null) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContentPage(
                                    date: _publishController.text,
                                    color: _currentColor,
                                    capt: _captController.text,
                                    file: file!)));
                      } else {
                        final snackBar = SnackBar(
                          content: const Text(
                            "Harap isi file anda!",
                            textAlign: TextAlign.center,
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                  },
                  child: const Text('Simpan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget widgetFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Cover",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 15.0)),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            onPressed: () {
              _pickFile();
            },
            child: const Text("Pick your Pict"),
          ),
        ),
      ],
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        file = File(result.files.single.path ?? "");
      });
    }
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  Widget widgetDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Publish At",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 12)),
        TextFormField(
          controller: _publishController,
          focusNode: AlwaysDisabledFocusNode(),
          decoration: const InputDecoration(
            hintText: "dd/mm/yyyy",
            border: OutlineInputBorder(),
            labelStyle: TextStyle(
              color: Colors.blue,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Tanggal tidak boleh kosong';
            }
            return null;
          },
          onTap: () async {
            final selectDate = await showDatePicker(
              context: context,
              initialDate: currentDate,
              firstDate: DateTime(1990),
              lastDate: DateTime(currentDate.year + 5),
            );
            setState(() {
              if (selectDate != null) {
                _dueDate = selectDate;
                _publishController
                  ..text = DateFormat('dd/MM/yyyy').format(_dueDate)
                  ..selection = TextSelection.fromPosition(
                    TextPosition(
                      offset: _publishController.text.length,
                      affinity: TextAffinity.upstream,
                    ),
                  );
              }
            });
          },
        ),
      ],
    );
  }

  Widget widgetColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Color Theme',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 12)),
        TextFormField(
          controller: _colorController,
          focusNode: AlwaysDisabledFocusNode(),
          decoration: const InputDecoration(
            hintText: 'Pick a color',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Tanggal tidak boleh kosong';
            }
            return null;
          },
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: BlockPicker(
                      pickerColor: _currentColor,
                      onColorChanged: (color) {
                        setState(() {
                          _currentColor = color;
                          _colorController.text = _currentColor.toString();
                        });
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                });
          },
        ),
      ],
    );
  }

  Widget widgetCaption() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Caption',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 12)),
        TextFormField(
          controller: _captController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Tanggal tidak boleh kosong';
            }
            return null;
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Write your caption',
          ), // any number you need (It works as the rows for the textarea)
          keyboardType: TextInputType.multiline,
          maxLines: 6,
        ),
      ],
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
