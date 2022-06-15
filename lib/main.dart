import 'package:flutter/material.dart';
import 'package:recriando_linkedin/pages/feed.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Linkedin Clone UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FeedPage(),
    );
  }
}
