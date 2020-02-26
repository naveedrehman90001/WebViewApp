import 'package:flutter/material.dart';
import 'package:kensa_international/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      title: "Kensa International",
      home: SplashScreen(),
    );
  }
}
