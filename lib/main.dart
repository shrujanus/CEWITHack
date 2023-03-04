import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// this is a test
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Auto-AI',
        theme: ThemeData(
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
              bodySmall: TextStyle(color: Colors.white),
              displaySmall: TextStyle(color: Colors.white),
              titleSmall: TextStyle(color: Colors.white),
              titleMedium: TextStyle(color: Colors.white),
              titleLarge: TextStyle(color: Colors.white)),
          scaffoldBackgroundColor: const Color(0xFF121212),
          primaryColor: const Color(0xFF332940),
          cardColor: const Color(0xFF332940),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF121212),
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                fontFamily: "Sura-Bold",
                color: Color(0xFFFFFFFF),
              )),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xFF816797)),
        ),
        home: Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: CurvedNavigationBar(
              items: const [
                Icon(Icons.car_repair, size: 30, color: Colors.white),
                Icon(Icons.monitor_heart_rounded,
                    size: 30, color: Colors.white),
                Icon(Icons.security, size: 30, color: Colors.white),
                Icon(Icons.map_rounded, size: 30, color: Colors.white),
              ],
              animationDuration: const Duration(milliseconds: 500),
              animationCurve: Curves.fastLinearToSlowEaseIn,
              buttonBackgroundColor: const Color(0xFF816797),
              backgroundColor: const Color(0xFF332940),
              color: const Color(0xFF121212),
              height: 40,
            ),
          ),
          appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Auto-AI",
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const []),
          ),
        ));
  }
}
