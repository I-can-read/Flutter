import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('홈 화면'),
            TextButton(
              child: const Text('메뉴판 촬영하기'),
              onPressed: () {
                Navigator.of(context).pushNamed('/camera');
              },
            ),
            TextButton(
              child: const Text('내 음료 취향 알아보기'),
              onPressed: () {
                Navigator.of(context).pushNamed('/recommend');
              },
            ),
          ],
        ),
      ),
    );
  }
}
