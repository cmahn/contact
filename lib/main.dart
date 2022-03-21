import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 변수로 위젯 대체: 축약 가능하지만, 성능 이슈가 있을 수 있다.
var a = SizedBox(
  child: Text('안녕'),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // material 테마 가능 위젯
        home: Scaffold(
            appBar: AppBar(),
            body: ListView(  // 컬럼 대시에 스크롤바가 생긴다, 메모리 절약도 가능-스크롤 내 숨겨진 곳은 메모리에서 삭제 가능
              // controller: , //스크롤 위치 체크도 가능
              children: [
                CstWz(),
                Text('안녕'),
                Text('안녕'),
                Text('안녕'),
                Text('안녕'),
              ],
            )
        )
    );
  }
}

// 커스텀 위젯: 길고 복잡한 레이아웃 축약
class CstWz extends StatelessWidget {
  const CstWz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('Hello'),
    );
  }
}


