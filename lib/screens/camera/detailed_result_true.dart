import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri _url = Uri.parse('https://www.google.com/search?q=%EC%95%84%EB%A9%94%EB%A6%AC%EC%B9%B4%EB%85%B8');

class DetailResultTrue extends StatelessWidget {
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
            const SizedBox(height: 30),
            const Text('결과 확인',
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold ,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(width: 300,height: 500,
            child:
            Card(
                shape: RoundedRectangleBorder(  //모서리를 둥글게 하기 위해 사용
                  borderRadius: BorderRadius.circular(16.0),
                ),
                elevation: 4.0, // 그림자 깊이
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('아메리카노',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),),
                    const SizedBox(height: 15),
                    const Icon(
                      Icons.coffee,
                      color: Colors.brown,
                      size: 200,),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
                      child: Text('에스프레소에 뜨거운 물을 더한 음료',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                    TextButton(
                      onPressed: _launchUrl,
                      child: const Text('검색 결과 더보기',
                      style: TextStyle(color: Colors.blue,
                      decoration: TextDecoration.underline),),
                    ),
                  ],
                )
            ),

            ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){Navigator.pop(context);},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFD700),
                onPrimary: Colors.black,
                minimumSize: Size(300, 40),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('목록으로', style: TextStyle(fontSize: 30)),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}