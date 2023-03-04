import 'package:flutter/material.dart';

class info_card extends StatelessWidget {
  String title;
  Icon icon;
  info_card({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Text(title), icon],
      ),
    );
  }
}
