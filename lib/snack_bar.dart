import 'package:flutter/material.dart';

/**
 * App bar icon button
 * - leading : 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
 * - actions : 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
 * - onPressed : 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때
 *              일어나는 이벤트를 정의하는 곳
 */


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: Text('Show Me',
          style: TextStyle(
            color: Colors.white
          ),
          ),
          onPressed: () {  
            Scaffold.of(context).showSnackBar(content)
          },
      ),

    ),
    );
  }
}