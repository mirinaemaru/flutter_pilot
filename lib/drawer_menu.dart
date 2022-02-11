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
      title: 'AppBar',
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
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              //accountName: accountName, accountEmail: accountEmail
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/dad.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/man.PNG'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/man.PNG'),
                //   backgroundColor: Colors.white,
                // )
              ],
              accountName: Text('Mirinae'),
              accountEmail: Text('mirinae.maru@gmail.com'),
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            )
            , ListTile(
              leading: Icon(Icons.home,
                  color: Colors.grey[850]),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            )
            , ListTile(
              leading: Icon(Icons.settings,
                  color: Colors.grey[850]),
              title: Text('Setting'),
              onTap: (){
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            )
            , ListTile(
              leading: Icon(Icons.question_answer,
                  color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}