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
            return CameraPreview(_controller);
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