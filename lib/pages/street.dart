import 'package:flutter/material.dart';

void main() {
  runApp(const street_viewPage());
}

class street_viewPage extends StatefulWidget {
  const street_viewPage({super.key});

  @override
  State<street_viewPage> createState() => _street_viewPageState();
}

class _street_viewPageState extends State<street_viewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Stack(children: [
          SizedBox.expand(
            child: ColoredBox(color: Colors.green),
          ),
        ]));
  }
}
