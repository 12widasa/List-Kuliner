import 'package:flutter/material.dart';
import 'package:list_kuliner/styles.dart'; // Pastikan styles.dart mendefinisikan pageBgColor dan headerBackColor
import 'home_page.dart'; // Impor home_page.dart

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: pageBgColor, // Ganti dengan pageBgColor
          appBar: AppBar(
            backgroundColor: headerBackColor, // Ganti dengan headerBackColor
            title: Text(
              "Kuliner Nusantara",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: const HomePage(), // Panggil HomePage yang diimpor
        ),
      ),
    );
  }
}
