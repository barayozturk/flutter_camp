import 'package:btn_basic/image_widgets.dart';
import 'package:btn_basic/my_counter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.purpleAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      
      
      home: Scaffold(appBar: AppBar(
        title: Text(
          'Img examples'
        ),
      ),
      body: ImgExmp(),
      ),
    );
  }
}


