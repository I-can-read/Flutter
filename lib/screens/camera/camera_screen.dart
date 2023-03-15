import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:i_can_read/configs/color.dart';
import 'package:i_can_read/main.dart';
import 'package:i_can_read/screens/camera/display_picture_screen.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  // 카메라의 현재 출력물을 보여주는 컨트롤러
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // 특정 카메라 선택, 해상도 지정
    _controller = CameraController(cameras[0], ResolutionPreset.max);
    // 컨트롤러 초기화
    _initializeControllerFuture = _controller.initialize();
  }

  // 생명주기 종료 시 컨트롤러 해제
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: 1 / _controller.value.aspectRatio,
              child: Stack(
                children: [
                  CameraPreview(_controller),
                  cameraOverlay(padding: 50, aspectRatio: 0.6, color: const Color(0x55000000)),
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () async {
          try {
            await _initializeControllerFuture;
            final image = await _controller.takePicture();

            if(!mounted) return;

            await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DisplayPictureScreen(imagePath: image.path),
                )
            );
          } catch (e) {
            print(e);
          }
        },
        backgroundColor: ColorPalette.primaryGold,
        foregroundColor: ColorPalette.black20,
        child: const Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget cameraOverlay({required double padding, required double aspectRatio, required Color color}) {
  return LayoutBuilder(
    builder: (context, constraints) {
      double parentAspectRatio = constraints.maxWidth / constraints.maxHeight;
      double horizontalPadding;
      double verticalPadding;

      if (parentAspectRatio < aspectRatio) {
        horizontalPadding = padding;
        verticalPadding = (constraints.maxHeight - ((constraints.maxWidth - 2 * padding) / aspectRatio)) / 2;
      } else {
        verticalPadding = padding;
        horizontalPadding = (constraints.maxWidth - ((constraints.maxHeight - 2 * padding) * aspectRatio)) / 2;
      }

      return Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(width: horizontalPadding, color: color)),
          Align(
            alignment: Alignment.centerRight,
            child: Container(width: horizontalPadding, color: color)),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(left: horizontalPadding, right: horizontalPadding),
              height: verticalPadding,
              color: color)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(left: horizontalPadding, right: horizontalPadding),
              height: verticalPadding,
              color: color)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
            decoration: BoxDecoration(border: Border.all(color: ColorPalette.primaryGold)),
          ),
        ],
      );
    }
  );
}