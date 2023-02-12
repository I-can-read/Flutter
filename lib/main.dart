import 'package:flutter/material.dart';
import 'package:i_can_read/screens/home_screen.dart';
import 'package:i_can_read/screens/camera/camera_screen.dart';
import 'package:i_can_read/screens/recommend/recommend_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I can read',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/camera': (context) => CameraScreen(),
        '/recommend': (context) => RecommendScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}