import 'package:cupertino_12/chart_model.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt_circle), label: "Contacs"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone), label: "Call"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble), label: "Chats"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings), label: "Settings"),
      ]),
      tabBuilder: (ctx, i) {
        return CupertinoTabView(builder: (ctx) {
          return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: CupertinoButton(
                child: Text("Edit"),
                padding: EdgeInsets.all(10.0),
                onPressed: () {},
              ),
              middle: Text(
                "Chats",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(CupertinoIcons.pencil_ellipsis_rectangle),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    CupertinoSearchTextField(
                      prefixInsets: EdgeInsets.only(left: 170),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CupertinoButton(
                            child: Text("All Chats"), onPressed: () {}),
                        CupertinoButton(child: Text("Work"), onPressed: () {}),
                        CupertinoButton(
                            child: Text("Unread"), onPressed: () {}),
                        CupertinoButton(
                            child: Text("Personal"), onPressed: () {}),
                      ],
                    ),
                    Expanded(
                        child: Container(
                            child: ListView.separated(
                                itemBuilder: (ctx, i) {
                                  return CupertinoListTile(
                                    leading: CircleAvatar(
                                      radius: 28,
                                      backgroundImage:
                                          NetworkImage(items[i].profileUrl),
                                    ),
                                    title: Text(
                                      items[i].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(items[i].message),
                                    trailing: Text(items[i].time),
                                  );
                                },
                                separatorBuilder: (ctx, i) {
                                  return Divider();
                                },
                                itemCount: items.length))),
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }
}
