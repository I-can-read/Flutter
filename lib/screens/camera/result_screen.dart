import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:i_can_read/configs/color.dart';
import 'package:i_can_read/configs/curve_painter.dart';
import 'package:i_can_read/models/menu.dart';
import 'package:i_can_read/screens/camera/detailed_result_true.dart';

class ResultScreen extends StatelessWidget {
  final String imagePath;
  ResultScreen({super.key, required this.imagePath});

  Future<List<Menu>> getMenu() async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(imagePath),
    });
    try {
      final response = await Dio().post('${dotenv.env['BASE_URL']}/api/v1/menu/list', data: formData);
      if (response.statusCode == 200) {
        return response.data.map<Menu>(
          (item) =>
          Menu(
            name: item['name'],
            description: item['meaning'],
            image: item['image'],
          ),
        ).toList();
      } else {
        return Future.error("Error");
      }
    } on DioError catch (e) {
      print(e);
      return Future.error(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('결과 확인', style: TextStyle(color: Colors.black)),
        backgroundColor: ColorPalette.primaryGold,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: FutureBuilder<List<Menu>>(
        future: getMenu(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('오류가 발생하였습니다.'),
                ],
              )
            );
          } else if (snapshot.hasData == false) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('최대 1분 소요될 수 있습니다.'),
                ],
              )
            );
          } else {
            return CustomPaint(
              painter: CurvePainter(),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 20);
                },
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return MenuTile(menu: snapshot.data![index]);
                },
                padding: const EdgeInsets.all(15),
              ),
            );
          }
        },
      )

    );
  }
}

class MenuTile extends StatelessWidget {
  final Menu menu;
  MenuTile({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 10)
        ],
      ),
      child: ListTile(
        title: Text(menu.name, style: const TextStyle(fontSize: 28)),
        subtitle: Text(menu.description, style: const TextStyle(fontSize: 20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailResultTrue()),
          );
        },
        leading: AspectRatio(
          aspectRatio: 1,
          child: Image.network(menu.image, width: 100, fit: BoxFit.cover)
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}