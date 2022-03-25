import 'package:flutter/material.dart';
import 'package:section_15/image_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Section 15 (Change to 18)"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
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
                        Navigator.of(ctx).push(MaterialPageRoute(
                            builder: (ctx) => Scaffold(
                                  body: SafeArea(
                                    child: Image(
                                      image:
                                          NetworkImage(getImage[index].gambar),
                                      fit: BoxFit.cover,
                                      height: double.infinity,
                                      width: double.infinity,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                )));
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
