import 'package:flutter/material.dart';

class SetAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const SetAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: const Color(0xffFF6A1A),
    );
  }
}

class SetGridCard extends StatelessWidget {
  final String image;
  final String title;
  const SetGridCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(0.5),
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.fitHeight)),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
