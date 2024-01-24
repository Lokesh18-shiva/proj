import 'package:flutter/material.dart';

class DS extends StatelessWidget {
  String text;
  DS({super.key ,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
