import 'package:flutter/material.dart';
import 'package:section_18/image_model.dart';

class BottomSheetPage extends StatefulWidget {
  const BottomSheetPage({Key? key}) : super(key: key);

  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Text(
              "BottomSheet Page",
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
                        showModalBottomSheet(
                          context: ctx,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (ctx) {
                            return Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
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
                            );
                          },
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
