import 'package:flutter/material.dart';

void main() {
  //①基本的にはconstだが、finalしか使えないものがある。
  //その時は他のconstもfinalに書き換え
  //②colum を rowにすると、縦ならべになる
  final tit = Title(
    color: Colors.teal.shade300,
    child: Text(
      'ただバナナが食べたい',
    ),
  );

  final col = Column(
    //ここにconst↓書くと軽くなるからおすすめ
    //mainAxisAlignment: MainAxisAlignment.center,
    //crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.network('https://flutter-image-network.web.app/inu.jpeg'),
    ],
  );

  final con = Container(
    color: Colors.teal.shade300,
    width: 350,
    height: 300,
    child: Text('ただバナナが食べたくて'),
    alignment: Alignment.bottomCenter,
  );

  //memo: 問題点　以下のrowが反映されない＊9.28
  final row = Row(
    children: [Text('ただ')],
  );

  //下の変数に入れることで描きやすいコードになる。
  //全部１行ずつ書いてもいい
  final a = MaterialApp(
      home: Scaffold(
          body: Center(
    child: con,
  )));
  runApp(a);
}
