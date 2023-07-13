import 'package:bucket_list/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting_Page extends StatelessWidget {
  const Setting_Page({super.key});

  @override
  Widget build(BuildContext context) {
    // type 목록
    List<Map<String, dynamic>> BucketList = [
      {
        "type": "여행",
        "icon": Icons.airplanemode_active,
      },
      {
        "type": "공부",
        "icon": Icons.book,
      },
    ];

// 여행 목록
    List<Map<String, dynamic>> BucketList_travel = [
      // type 여행
      {
        "goal": "일본가기",
        "date": "",
        "memo": "",
      },
      {
        "goal": "중국가기",
        "date": "",
        "memo": "",
      },
      {
        "goal": "중국가기",
        "date": "",
        "memo": "",
      },
    ];

    // 저축 목록
    List<Map<String, dynamic>> BucketList_money = [
      // type 여행
      {
        "goal": "일본가기",
        "date": "",
        "memo": "",
      },
      {
        "goal": "중국가기",
        "date": "",
        "memo": "",
      },
    ];

    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFFFFF59D),
                Color(0xFF43A047),
              ],
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 3, // 앱이 붕 떠 있는 효과를 줌.
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        title: Row(
          // title의 중앙을 맞추기 위해 사용
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '설정 및 달성 현황',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )),
                  child: Text(
                    'Nickname',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ),

                // Row 위젯에서 간격을 넣기 위해 사용.
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: deviceWidth - 150,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 10.0, right: 0.0, top: 0.0, bottom: 0.0),
                      hintText: "7자 자리수 제한",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // column 위젯에서 간격을 넣기 위해 사용.
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Type',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // column 위젯에서 간격을 넣기 위해 사용.
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 9,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )),
                child: ListView.separated(
                  itemCount: BucketList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Container(
                        height: 40.0,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Icon(
                                BucketList[index]['icon'],
                              ),
                            ),
                            Expanded(
                              child: Text(
                                BucketList[index]['type'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                ),
              ),
            ),
            // column 위젯에서 간격을 넣기 위해 사용.
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '완성도',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // column 위젯에서 간격을 넣기 위해 사용.
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 9,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )),
                child: ListView.separated(
                  itemCount: BucketList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 40.0,
                      child: Row(
                        children: [
                          Expanded(
                            child: Icon(BucketList[index]['icon']),
                          ),
                          Expanded(
                            child: Text(
                              BucketList[index]['type'],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                ),
              ),
            ),
            // column 위젯에서 간격을 넣기 위해 사용.
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
