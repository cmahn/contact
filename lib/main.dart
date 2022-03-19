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
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('앱임'),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container( // or Row
            width:  50, height: 50,
            margin: EdgeInsets.fromLTRB(0,30,0,0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
            child: Text('ddd'),
          ),
        ),


      )
    );

  }
}
