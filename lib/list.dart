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
        height: 40,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.lightGreen[100]!],
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.green[400]!,
              width: 2,
            )),
        child: SafeArea(
          child: ListView.separated(
            itemCount: bucketList.length,
            itemBuilder: (context, index) {
              final bucketItem = bucketList[index];
              return Container(
                height: 40.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        bucketItem.icon,
                        size: 28,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        bucketItem.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
        ),
      ),
    );
  }
}
