import 'package:bucket_list/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.yellow[200]!, Colors.green[600]!],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Text(
              "Bucket List",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "거북이 19조",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green[200],
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/turtle_1.png',
                height: 180,
                width: 180,
              ),
            ),
            TextButton(
              onPressed: () {
                // 이미지를 누르면 main_page.dart 화면으로 이동합니다.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text(
                '시작하기',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
