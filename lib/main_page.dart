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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 13, 181, 58),
        elevation: 3,
        title: Text(
          "Bucket List",
          style: TextStyle(
            // backgroundColor: Color.fromARGB(255, 26, 243, 232),
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting_Page()),
              );
            },
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "19팀 거북이의 버킷리스트",
                style: TextStyle(
                  backgroundColor: Colors.white,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 8, 181, 74),
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
            height: 0,
          ),
          SizedBox(height: 20),
          list(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('This is a pop-up dialog.'),
                content: Text('This is the content of the pop-up dialog.'),
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
        backgroundColor: Colors.black,
        elevation: 1,
        child: Icon(
          Icons.add_rounded,
          size: 36,
        ),
      ),
    );
  }
}
