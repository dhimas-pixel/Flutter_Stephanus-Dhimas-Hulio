import 'package:flutter/material.dart';
import 'package:section_18/image_model.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Text(
              "Alert Page",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (ctx, index) => Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: ctx,
                          builder: (ctx) => AlertDialog(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            content: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: NetworkImage(getImage[index].gambar),
                                    fit: BoxFit.cover,
                                    height: 300,
                                    width: 300,
                                    alignment: Alignment.center,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Back",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Image(
                        image: NetworkImage(getImage[index].gambar),
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
              itemCount: getImage.length,
            )
          ],
        ),
      ),
    );
  }
}
