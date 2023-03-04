import 'package:flutter/material.dart';
import '../widget/info_card.dart';

class garagePage extends StatelessWidget {
  const garagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 0,
                color: const Color(0xFF121212),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          const Text('Welcome to the Garage.',
                              style: TextStyle(fontSize: 35)),
                          Image.asset(
                            'assets/images/Car_gg.png',
                            fit: BoxFit.cover,
                            height: 250,
                            width: 500,
                          )
                        ],
                      ),
                      info_card(title: 'title', icon: Icon(Icons.abc)),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                    ],
                  ),
                ),
              )
            ]),
      )),
    );
  }
}
