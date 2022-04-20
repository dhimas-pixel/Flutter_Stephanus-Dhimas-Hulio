import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:section_20/model/contacts_model.dart';
import 'package:section_20/stores/contacts.dart';

class DetailPage extends StatefulWidget {
  final ContactsModel contactsModel;
  const DetailPage({Key? key, required this.contactsModel}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      if (widget.contactsModel.id > 3) {
        print("Data tidak ada di API");
      } else {
        Provider.of<Contacts>(context, listen: false)
            .setContactsID(widget.contactsModel.id);
      }
      print(widget.contactsModel.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Detail"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          backgroundColor: const Color(0xFF219653)),
      body: SafeArea(
        child: Center(
          child: Consumer<Contacts>(builder: (context, value, child) {
            if (value.isProcessing) {
              return Center(
                child: LoadingAnimationWidget.threeRotatingDots(
                    color: const Color(0xFF219653), size: 60),
              );
            } else {
              if (widget.contactsModel.id > 3) {
                return Center(
                  child: Image.asset(
                    "images/error.jpg",
                    width: 300,
                    height: 300,
                  ),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Text(
                        value.contactsModel.id.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      radius: 40,
                      backgroundColor: const Color(0xFF219653),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 12.0)),
                    Text(
                      value.contactsModel.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 5.0)),
                    Text(
                      value.contactsModel.phone,
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                );
              }
            }
          }),
        ),
      ),
    );
  }
}
