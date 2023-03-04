import 'package:flutter/material.dart';

void main() {
  runApp(const securityPage());
}

class securityPage extends StatelessWidget {
  const securityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("securityPage")));
  }
}
