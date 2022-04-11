import 'package:flutter/material.dart';

class AnimasiPage extends StatefulWidget {
  const AnimasiPage({Key? key}) : super(key: key);

  @override
  State<AnimasiPage> createState() => _AnimasiPageState();
}

class _AnimasiPageState extends State<AnimasiPage> {
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isChanged = !isChanged;
              print(isChanged);
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            child: Image.asset(
              "image/ace.jpg",
            ),
            width: isChanged ? 440 : 250,
          ),
        ),
      ),
    );
  }
}
