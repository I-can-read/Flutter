import 'package:flutter/material.dart';
import 'package:i_can_read/screens/recommend/recommend_screen4.dart';

import 'CustomPageRoute.dart';
import 'menu_filter.dart';


class RecommendScreen3 extends StatelessWidget {
  const RecommendScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 10, width: 80, decoration: BoxDecoration(color: Color(0xFFFFD700)),),
                Container(height: 10, width: 80, decoration: BoxDecoration(color: Color(0xFFFFD700)),),
                Container(height: 10, width: 80, decoration: BoxDecoration(color: Color(0xFFFFD700)),),
                Container(height: 10, width: 80, decoration: BoxDecoration(color: Color(0xFFD9D9D9)),)
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              '하나를 고르세요.',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                MenuFilter.isHot = true;
                Navigator.of(context).push(
                  CustomPageRoute(
                    page: RecommendScreen4(),
                  ),);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFE16D),
                onPrimary: Colors.black,
                minimumSize: Size(300, 200),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('뜨거움', style: TextStyle(fontSize: 40)),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                MenuFilter.isHot = false;
                Navigator.of(context).push(
                  CustomPageRoute(
                    page: RecommendScreen4(),
                  ),);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFC6ECCD),
                onPrimary: Colors.black,
                minimumSize: const Size(300, 200),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('차가움', style: TextStyle(fontSize: 40)),
            ),
            const SizedBox(height: 10),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  TextButton(
                      onPressed: (){Navigator.pop(context);},
                      child: const Text('< 이전 질문',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))
                  )
                ])
          ],
        ),
      ),
    );
  }
}