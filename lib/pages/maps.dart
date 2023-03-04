import 'package:flutter/material.dart';

void main() {
  runApp(const mapsPage());
}

class mapsPage extends StatelessWidget {
  const mapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("mapsPage")));
  }
}
