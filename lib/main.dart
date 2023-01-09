import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { // StatelessWidget 상태변화가 없어 새로고침이 필요없는것
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:  Text(
            'Hello Flutter', style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView( // 스크롤뷰 나타나게 하기
          child: Padding( // 패딩 간격
            padding: const EdgeInsets.all(16),
            child: Column( // 밑으로 하나씩 추가.
              children: [
                Padding(
                  padding: const EdgeInsets.all(32), // 이미지 패딩
                  child: Image.network("https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                    width: 81,),
                ),
                TextField( // 이메일칸
                  decoration: InputDecoration(labelText: '이메일'), //내용
                ),
                TextField( // 비밀번호 칸
                  obscureText: true,
                  decoration: InputDecoration(labelText: '비밀번호'), // 내용
                ),
                Container(
                  width: double.infinity, // 최대한 크게
                  margin: const EdgeInsets.only(top: 16), // 마진 간격
                  child: ElevatedButton(onPressed: (){}, child: Text('로그인') //함수실행 및 이름
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
