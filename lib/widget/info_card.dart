import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class info_card extends StatelessWidget {
  String title;
  Icon icon;
  String value;
  info_card({required this.title, required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: icon,
                    ),
                  ],
                ),
                Text(
                  value,
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
