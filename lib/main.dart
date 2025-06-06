import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Diri',
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: ProfileScreen(),
    );
  }
}
