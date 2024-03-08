import 'package:flutter/material.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';

class ButtonBar extends StatefulWidget {
  const ButtonBar({super.key});

  @override
  State<ButtonBar> createState() => _ButtonBarState();
}

class _ButtonBarState extends State<ButtonBar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SlidingBox(
        body: const Center(
          child: Text("This is the s",
            style: TextStyle(color: Colors.cyan),),
        ),
        backdrop: Backdrop(
          body: Scaffold(
            backgroundColor: Colors.white70,
          ),
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}

