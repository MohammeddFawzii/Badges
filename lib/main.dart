import 'package:flutter/material.dart';
import 'package:m/badges%20center/views/badges_center.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BadgesCenterView(),
    );
  }
}
