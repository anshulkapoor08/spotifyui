import 'package:flutter/material.dart';
import 'package:spotifyui/navigations/tabbar.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

// ignore: camel_case_types
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white10,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontSize: 12.0),
            unselectedLabelStyle: TextStyle(fontSize: 12.0),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38),
      ),
      home: const Tabbar(),
    );
  }
}
