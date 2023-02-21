import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:i_can_read/screens/home_screen.dart';
import 'package:i_can_read/screens/camera/camera_screen.dart';
import 'package:i_can_read/screens/recommend/recommend_result.dart';
import 'package:i_can_read/screens/recommend/recommend_screen.dart';
import 'package:i_can_read/screens/recommend/recommend_screen2.dart';
import 'package:i_can_read/screens/recommend/recommend_screen3.dart';
import 'package:i_can_read/screens/recommend/recommend_screen4.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
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
        '/recommend2': (context) => RecommendScreen2(),
        '/recommend3': (context) => RecommendScreen3(),
        '/recommend4': (context) => RecommendScreen4(),
        '/recommendResult': (context) => RecommendResultScreen(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'NotoSansKR'),
    );
  }
}