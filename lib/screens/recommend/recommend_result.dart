import 'package:flutter/material.dart';
import 'package:i_can_read/models/menu.dart';
import 'package:i_can_read/screens/home_screen.dart';
import 'package:i_can_read/screens/recommend/menu_filter.dart';
import 'package:i_can_read/models/menu_recommend.dart';
import 'CustomPageRoute.dart';

class RecommendResultScreen extends StatelessWidget {
  final List<Menu> menus = RecommendMenu().getMenu();
 @override
  Widget build(BuildContext context) {
   if (MenuFilter.isCoffee && MenuFilter.isHot && MenuFilter.isMilk && MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[0]);
   }
   else if(MenuFilter.isCoffee && MenuFilter.isHot && MenuFilter.isMilk && !MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[1]);
   }
   else if(MenuFilter.isCoffee && MenuFilter.isHot && !MenuFilter.isMilk && MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[2]);
   }
   else if(MenuFilter.isCoffee && MenuFilter.isHot && !MenuFilter.isMilk && !MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[3]);
   }
   else if(MenuFilter.isCoffee && !MenuFilter.isHot && MenuFilter.isMilk && MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[4]);
   }
   else if(MenuFilter.isCoffee && !MenuFilter.isHot && MenuFilter.isMilk && !MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[5]);
   }
   else if(MenuFilter.isCoffee && !MenuFilter.isHot && !MenuFilter.isMilk && MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[6]);
   }
   else if(MenuFilter.isCoffee && !MenuFilter.isHot && !MenuFilter.isMilk && !MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[7]);
   }
   else if(!MenuFilter.isCoffee && MenuFilter.isHot && MenuFilter.isMilk && MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[8]);
   }
   else if(!MenuFilter.isCoffee && MenuFilter.isHot && MenuFilter.isMilk && !MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[9]);
   }
   else if(!MenuFilter.isCoffee && MenuFilter.isHot && !MenuFilter.isMilk && MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[10]);
   }
   else if(!MenuFilter.isCoffee && MenuFilter.isHot && !MenuFilter.isMilk && !MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[11]);
   }
   else if(!MenuFilter.isCoffee && !MenuFilter.isHot && MenuFilter.isMilk && MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[12]);
   }
   else if(!MenuFilter.isCoffee && !MenuFilter.isHot && MenuFilter.isMilk && !MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[13]);
   }
   else if(!MenuFilter.isCoffee && !MenuFilter.isHot && !MenuFilter.isMilk && MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[14]);
   }
   else if(!MenuFilter.isCoffee && !MenuFilter.isHot && !MenuFilter.isMilk && !MenuFilter.isSweet){
     return ShowResultScreen(menu: menus[15]);
   }
   else{
     return ShowResultScreen(menu: menus[0]);
   }
 }
}


class ShowResultScreen extends StatelessWidget {
  final Menu menu;
  ShowResultScreen({required this.menu});
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
                    children:[
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(menu.name,
                          style: const TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Image.network(menu.image, width: 100, fit: BoxFit.cover),
                      const SizedBox(height: 30),
                      Text(menu.description,
                        style: const TextStyle(
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
                Navigator.of(context).popUntil((route) => route.isFirst);
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
              child: const Text('시작화면 가기', style: TextStyle(fontSize: 30)),
            ),
            const SizedBox(height: 10)

          ],
        ),
      ),
    );
  }
}