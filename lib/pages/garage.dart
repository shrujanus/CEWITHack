import 'package:flutter/material.dart';
import '../widget/info_card.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ionicons/ionicons.dart';

class garagePage extends StatelessWidget {
  garagePage({super.key});
  bool isConnected = false;

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
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/Car_gg.png',
                                fit: BoxFit.cover,
                                height: 250,
                                width: 500,
                              ),
                              isConnected
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.signal_wifi_4_bar_outlined,
                                          color: Color.fromARGB(255, 3, 186, 0),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text('Connected'),
                                        )
                                      ],
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.signal_wifi_bad_outlined,
                                            color:
                                                Color.fromARGB(255, 215, 0, 0)),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text('Disconnected'),
                                        )
                                      ],
                                    )
                            ],
                          ),
                        ],
                      ),
                      info_card(
                          title: 'Fuel Level',
                          icon: const Icon(
                            Icons.local_gas_station,
                            color: Color(0xFF808080),
                          ),
                          value: '20'),
                      info_card(
                          title: 'Fuel Level',
                          icon: const Icon(
                            Icons.local_gas_station,
                            color: Color(0xFF808080),
                          ),
                          value: '20'),
                      info_card(
                          title: 'Fuel Level',
                          icon: const Icon(
                            Icons.local_gas_station,
                            color: Color(0xFF808080),
                          ),
                          value: '20'),
                      info_card(
                          title: 'Fuel Level',
                          icon: const Icon(
                            Icons.local_gas_station,
                            color: Color(0xFF808080),
                          ),
                          value: '20'),
                      info_card(
                          title: 'Fuel Level',
                          icon: const Icon(
                            Icons.local_gas_station,
                            color: Color(0xFF808080),
                          ),
                          value: '20'),
                      info_card(
                          title: 'Fuel Level',
                          icon: const Icon(
                            Icons.local_gas_station,
                            color: Color(0xFF808080),
                          ),
                          value: '20'),
                      info_card(
                          title: 'Fuel Level',
                          icon: const Icon(
                            Icons.local_gas_station,
                            color: Color(0xFF808080),
                          ),
                          value: '20'),
                      info_card(
                          title: 'Fuel Level',
                          icon: const Icon(
                            Icons.local_gas_station,
                            color: Color(0xFF808080),
                          ),
                          value: '20'),
                    ],
                  ),
                ),
              )
            ]),
      )),
    );
  }
}
