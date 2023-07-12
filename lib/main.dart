import 'package:bucket_list/setting_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // 우측 상단에 debug 여부를 표시하는 것
      title: 'bucket list',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // 네비게이션 탭 바
      initialIndex: 0, // 0:초기 화면, 1:메인 화면, 2:설정 화면
      length: 3, // tab의 갯수
      child: Scaffold(
        body: Stack(
          children: [
            TabBarView(
              // physics는 app에서 슬라이드를 하여 옆페이지로 넘어가는 것을 허용할 것인지 말것인지 결정
              // physics: NeverScrollableScrollPhysics(), // NeverScrollableScrollPhysics()는 비활성화
              // TabBar View 내 Tab 설정
              children: [
                Home_Page(),
                Setting_Page(),
              ],
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      // child: TabPage(), // 상단에 현재 페이지 위치 표시
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class TabPage extends StatefulWidget {
//   const TabPage({super.key});

//   @override
//   State<TabPage> createState() => _TabPageState();
// }

// class _TabPageState extends State<TabPage> {
//   @override
//   Widget build(BuildContext context) {
//     return TabPageSelector(
//       color: DefaultTabController.of(context).index == 1
//           ? Colors.green[300]
//           : Colors.grey[400],
//       selectedColor: DefaultTabController.of(context).index == 1
//           ? Colors.white
//           : Colors.green,
//       indicatorSize: 8, // 크기
//     );
//   }
// }
