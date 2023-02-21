import 'package:flutter/material.dart';
import 'package:i_can_read/configs/color.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFDF0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: <Widget>[
                Text('I can read',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 64,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = ColorPalette.black50
                  )
                ),
                const Text('I can read',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 64,
                    color: ColorPalette.primaryGold,
                  )
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/home_image.png'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/camera');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 80),
                backgroundColor: ColorPalette.primaryGold,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                children: const [
                  Text('메뉴판 촬영하기', style: TextStyle(fontSize: 28, color: ColorPalette.black10)),
                  Text('이 가게의 메뉴가 궁금해', style: TextStyle(fontSize: 24, color: ColorPalette.black40, fontWeight: FontWeight.w400))
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/recommend');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 80),
                backgroundColor: ColorPalette.secondaryGold,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                children: const [
                  Text('내 음료 취향 알아보기', style: TextStyle(fontSize: 28, color: ColorPalette.black10)),
                  Text('뭘 먹을지 모르겠어', style: TextStyle(fontSize: 24, color: ColorPalette.black40, fontWeight: FontWeight.w400))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
