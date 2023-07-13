import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

class list extends StatelessWidget {
  const list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(),
        child: SafeArea(
          child: ListView.builder(
            itemCount: bucketList.length,
            itemBuilder: (context, index) {
              final bucketItem = bucketList[index];
              return ListTile(
                leading: Icon(
                  bucketItem.icon,
                  size: 50,
                ),
                title: Text(
                  bucketItem.title,
                  style: TextStyle(fontSize: 40),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
