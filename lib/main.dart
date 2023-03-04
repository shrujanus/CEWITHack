import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './pages/garage.dart';
import './pages/maps.dart';
import './pages/monitor.dart';
import './pages/security.dart';
import 'package:line_icons/line_icons.dart';
import './pages/street.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    title: 'Auto-AI',
    debugShowCheckedModeBanner: false,
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
      cardColor: const Color(0xFF86bbd8),
      appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121212),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            fontFamily: "Sura-Bold",
            color: Color(0xFFFFFFFF),
          )),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFF816797)),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int page = 0;
  final PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const street_viewPage()),
            );
          },
          foregroundColor: Color(0xFF000000),
          backgroundColor: const Color(0xFF86bbd8),
          child: const Icon(LineIcons.streetView, size: 35),
          isExtended: true,
          heroTag: "street",
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: CurvedNavigationBar(
            items: const [
              Icon(Icons.car_repair, size: 30, color: Colors.white),
              Icon(Icons.lock, size: 30, color: Colors.white),
              Icon(Icons.security, size: 30, color: Colors.white),
              Icon(Icons.map_rounded, size: 30, color: Colors.white),
            ],
            animationDuration: const Duration(milliseconds: 500),
            index: page,
            animationCurve: Curves.fastLinearToSlowEaseIn,
            buttonBackgroundColor: const Color(0xFF816797),
            backgroundColor: const Color(0xFF332940),
            color: const Color(0xFF121212),
            height: 40,
            letIndexChange: (index) => true,
            onTap: (index) {
              setState(() {
                page = index;
                pageController.animateToPage(index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOutExpo);
              });
            },
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Auto-AI",
            ),
          ),
        ),
        body: SizedBox.expand(
          child: PageView(
            controller: pageController,
            padEnds: false,
            children: [
              garagePage(),
              monitorPage(),
              securityPage(),
              mapsPage(),
            ],
            onPageChanged: (index) {
              setState(() {
                page = index;
              });
              print(page);
              //print(index);
            },
          ),
        ));
  }
}
