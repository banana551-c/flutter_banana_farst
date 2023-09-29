import 'package:flutter/material.dart';

void main() {
  //①基本的にはconstだが、finalしか使えないものがある。
  //その時は他のconstもfinalに書き換え
  //②colum を rowにすると、縦ならべになる
  final col = Column(
    //ここにconst↓書くと軽くなるからおすすめ
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      Text('レモン'),
      Text('りんご'),
      Text('葡萄'),
    ],
  );

  //memo: 問題点　以下のrowが反映されない＊9.28
  final row = Row(
    children: [col, col, col],
  );

  //下の変数に入れることで描きやすいコードになる。
  //全部１行ずつ書いてもいい
  final a = MaterialApp(
      home: Scaffold(
          body: Center(
    child: col,
  )));
  runApp(a);
}
