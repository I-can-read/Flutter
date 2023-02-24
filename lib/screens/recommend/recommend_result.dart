import 'package:flutter/material.dart';
import 'package:i_can_read/screens/home_screen.dart';

import 'CustomPageRoute.dart';

class RecommendResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit:BoxFit.fitWidth,
          alignment: Alignment.topCenter
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Text('이거 드셔보세요',
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold ,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(width: 300,height: 450,
            child:
            Card(
                shape: RoundedRectangleBorder(  //모서리를 둥글게 하기 위해 사용
                  borderRadius: BorderRadius.circular(16.0),
                ),
                elevation: 4.0, // 그림자 깊이
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    Text('<b>아메리카노</b>',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),),
                    SizedBox(height: 30),
                    Icon(
                      Icons.coffee,
                      color: Colors.brown,
                      size: 200,),
                    SizedBox(height: 30),
                    Text('에스프레소에\n뜨거운 물을 더한 음료',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                  ],
                )
            ),

            ),

            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CustomPageRoute(
                    page: HomeScreen(),
                  ),);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFD700),
                onPrimary: Colors.black,
                minimumSize: Size(300, 50),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('시작화면 가기', style: TextStyle(fontSize: 30)),
            ),
            const SizedBox(height: 10)

          ],
        ),
      ),
    );
  }
}