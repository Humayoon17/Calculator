import 'package:flutter/material.dart';

import './pages/home.dart';
import './res/colors.dart' as c;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = true;

  void darkModeToggle() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: isDarkMode ? c.Colors.primaryColor : Colors.white,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        appBarTheme: AppBarTheme(
            textTheme: TextTheme(
                button: TextStyle(
                  fontSize: 20,
                  color: c.Colors.operatorButtons,
                  fontWeight: FontWeight.bold,
                ),
                headline6: TextStyle(
                  color: c.Colors.operationButton,
                  fontSize: 16,
                ))),
      ),
      home: Home(darkModeToggle, isDarkMode),
    );
  }
}
