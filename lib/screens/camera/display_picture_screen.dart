import 'dart:io';

import 'package:flutter/material.dart';
import 'package:i_can_read/configs/color.dart';
import 'package:i_can_read/configs/curve_painter.dart';
import 'package:i_can_read/screens/camera/result_screen.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;
  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: CurvePainter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 20)
                  ],
                ),
                child: Image.file(File(imagePath),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.6,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(imagePath: imagePath),
                      )
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 60),
                  backgroundColor: ColorPalette.primaryGold,
                  foregroundColor: ColorPalette.black10,
                  textStyle: const TextStyle(fontSize: 28),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('메뉴 분석'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 60),
                  backgroundColor: ColorPalette.secondaryGold,
                  foregroundColor: ColorPalette.black40,
                  textStyle: const TextStyle(fontSize: 28),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('다시 찍기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}