import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './pages/garage.dart';
import './pages/maps.dart';
import './pages/monitor.dart';
import './pages/security.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    int _page = 0;
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
                index: _page,
                animationCurve: Curves.fastLinearToSlowEaseIn,
                buttonBackgroundColor: const Color(0xFF816797),
                backgroundColor: const Color(0xFF332940),
                color: const Color(0xFF121212),
                height: 40,
                letIndexChange: (index) => true,
                onTap: (index) {
                  setState(() {
                    _pageController.jumpToPage(index);
                  });
                },
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
            body: SizedBox.expand(
              child: PageView(
                controller: _pageController,
                children: [
                  garagePage(),
                  monitorPage(),
                  securityPage(),
                  mapsPage()
                ],
                onPageChanged: (index) {
                  setState(() {
                    _page = index;
                  });
                },
              ),
            )));
  }
}
