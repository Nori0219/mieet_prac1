import 'dart:io';

import 'package:flutter/material.dart';

void  main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Twitter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
         body:SingleChildScrollView(
           child: Column(
             children: [
               TweetTile(),
               TweetTile(),
               TweetTile(),
               TweetTile(),
               TweetTile(),
               TweetTile(),
               TweetTile(),
               TweetTile(),
               TweetTile(),
               TweetTile(),
             ],
           ),
         ),
      ),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),//Columnの周囲に隙間をあける
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,//アイコンを上に配置
        children: [
         CircleAvatar(
           backgroundImage://　アイコンを変更　//URLの画像に設定
              NetworkImage('https://pbs.twimg.com/profile_images/1444908349150011393/i5xLaSGd_400x400.jpg'),
         ),
          Column(// 縦並び
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(//横並び
               children: [
                 Text('Mieet@三重大学'),
                 SizedBox(width: 8,),//横の隙間
                 Text('2022/8/19'),
               ],
              ),
              SizedBox(height: 6,),//縦の隙間
              Text('Mieetの登録よろしくお願いします'),
              IconButton(
                onPressed: () {},//ボタンを押したときに,
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}