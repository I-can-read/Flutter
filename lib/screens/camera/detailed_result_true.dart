import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailResultTrue extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  DetailResultTrue({super.key, required this.name, required this.description, required this.image});

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
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Text('결과 확인',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight:FontWeight.bold ,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst), icon: const Icon(Icons.home_filled)),
              ],
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
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(name,
                        style: const TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Image.network(image, width: 200, height: 250, fit: BoxFit.cover),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
                      child: Text(description,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                    TextButton(
                      onPressed: () => _launchUrl(name),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: const [
                          Icon(Icons.link),
                          SizedBox(width: 5),
                          Text('검색 결과 더보기', style: TextStyle(fontSize: 20, color: Colors.blue, decoration: TextDecoration.underline)),
                        ],
                      )
                    )
                  ],
                )
            ),

            ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){Navigator.pop(context);},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFFD700),
                onPrimary: Colors.black,
                minimumSize: const Size(300, 40),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('목록으로', style: TextStyle(fontSize: 30)),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(keyword) async {
    if (!await launchUrl(Uri.parse('https://www.google.com/search?q=$keyword'))) {
      throw Exception('Could not launch url');
    }
  }
}