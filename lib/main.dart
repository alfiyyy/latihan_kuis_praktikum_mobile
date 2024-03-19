import 'package:flutter/material.dart';
import 'package:latihan_kuis_praktikum_mobile/screens/home.dart';
import 'package:latihan_kuis_praktikum_mobile/screens/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
