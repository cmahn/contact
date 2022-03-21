import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( // material 테마 가능 위젯
      home: Scaffold(
        appBar: AppBar( // 안에 넣을 수 있는 것들
          // 컬러
          backgroundColor: Colors.white,
          // 왼쪽제목
          title: Text('금호동3가', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),

          // 왼쪽에 넣을 아이콘
          // leading: Icon(Icons.),
          // 우측 아이콘
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.search, color: Colors.black,)
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.menu, color: Colors.black,)
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.doorbell, color: Colors.black,)
            )
          ],
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Flexible(
                child: Image.asset('assets/cannon.PNG'), flex:5
              ),
              Expanded(
                // width: 300, // 퍼센티지로 넓이 설정
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('카메라 판매', ),
                    Text('금호동 3가'),
                    Text('7000월'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('4')
                      ],
                    )
                  ],
                )
              )
            ],
          ),
        )
      )
    );
  }
}
