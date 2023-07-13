import 'package:flutter/material.dart';

import 'list.dart';
import 'setting_page.dart';

class BucketItem {
  final IconData icon;
  final String title;

  BucketItem({required this.icon, required this.title});
}

List<BucketItem> bucketList = [
  BucketItem(icon: Icons.shopping_cart, title: "쇼핑하기"),
  BucketItem(icon: Icons.book, title: " 읽기"),
  BucketItem(icon: Icons.fitness_center, title: "운동하기"),
  BucketItem(icon: Icons.travel_explore, title: "여행하기"),
  BucketItem(icon: Icons.restaurant, title: "맛집 탐방"),
  BucketItem(icon: Icons.movie, title: "영화 보기"),
  BucketItem(icon: Icons.music_note, title: "음악 공연 가기"),
  BucketItem(icon: Icons.sports_soccer, title: "축구 경기 관람"),
  BucketItem(icon: Icons.photo_camera, title: "사진 찍기"),
  BucketItem(icon: Icons.volunteer_activism, title: "자원봉사 활동"),
  BucketItem(icon: Icons.hiking, title: "등산하기"),
  BucketItem(icon: Icons.beach_access, title: "해변에서 쉬기"),
  BucketItem(icon: Icons.bike_scooter, title: "자전거 타기"),
  BucketItem(icon: Icons.home, title: "집 꾸미기"),
  BucketItem(icon: Icons.language, title: "외국어 배우기"),
  BucketItem(icon: Icons.local_cafe, title: "카페에서 작업하기"),
  BucketItem(icon: Icons.code, title: "코딩 프로젝트 완료하기"),
  BucketItem(icon: Icons.theater_comedy, title: "연극 관람하기"),
  BucketItem(icon: Icons.museum, title: "박물관 방문하기"),
  BucketItem(icon: Icons.golf_course, title: "골프 치기"),
];

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  static String routeName = "/main_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFFFFF59D),
                Color(0xFFAED581),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 3,
        title: Text(
          "Bucket List",
          style: TextStyle(
            // backgroundColor: Color.fromARGB(255, 26, 243, 232),
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Setting_Page()),
                    (route) => false);
              },
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.yellow[100]!, Colors.green[200]!],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 0.0, bottom: 10.0),
          child: Column(
            children: [
              SizedBox(height: 5),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "19팀 거북이의 버킷리스트",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green[400],
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.green,
                thickness: 2,
                height: 0,
              ),
              SizedBox(height: 10),
              list(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Bucket List 추가'),
                content: Text('Bucket List 항목에 따른 정보 (미구현...)'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: Colors.green[600],
        elevation: 1,
        child: Icon(
          Icons.add_rounded,
          size: 36,
        ),
      ),
    );
  }
}
