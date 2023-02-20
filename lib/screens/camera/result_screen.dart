import 'package:flutter/material.dart';
import 'package:i_can_read/configs/color.dart';
import 'package:i_can_read/configs/curve_painter.dart';
import 'package:i_can_read/models/menu.dart';
import 'package:i_can_read/models/menu_repository.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});
  final List<Menu> menus = MenuRepository().getMenu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('결과 확인', style: TextStyle(color: Colors.black)),
        backgroundColor: ColorPalette.primaryGold,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: CustomPaint(
        painter: CurvePainter(),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(height: 20);
          },
          itemCount: menus.length,
          itemBuilder: (context, index) {
            return MenuTile(menu: menus[index]);
          },
          padding: const EdgeInsets.all(15),
        ),
      ),
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
        leading: AspectRatio(
          aspectRatio: 1,
          child: Image.network(menu.image, width: 100, fit: BoxFit.cover)
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}