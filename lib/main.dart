import 'package:flutter/material.dart';
import 'package:innovaronix_app/screens/first_dash_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Innovaronix-App',
      home: Scaffold(
        body: DashboardScreen(),
      ),
    );
  }
}
