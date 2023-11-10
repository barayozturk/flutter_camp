import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(secondary: Colors.purple),
      ),
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              // 1st Row
              Row(
                children: [
                  Expanded(child: ColumnItem()),
                  Expanded(child: ColumnItem()),
                  Expanded(child: ColumnItem()),
                  Expanded(child: ColumnItem()),
                ],
              ),
              // 2nd Row
              Row(
                children: [
                  Container(child: ColumnSingleItem(text: "Baray", color:Colors.amber),),
                  
                ],
              ),
              // 3rd Row
              Row(
                children: [
                  
                  Container(child: ColumnSingleItem(text: "Onur",color:Colors.red)),
                ],
              ),
              // 4th Row
              Row(
                children: [
                  Container(child: ColumnSingleItem(text: "Ekin",color:Colors.blue)),
                ],
              ),
              Row(
                children: [
                  Container(child: ColumnSingleItem(text: "Emre",color:Colors.amber)),
                ],
              ),
              Row(
                children: [
                  Container(child: ColumnSingleItem(text: "Deniz",color:Colors.teal)),
                ],
              ),
              Row(
                children: [
                  Container(child: Column(
                    children: [
                      ColumnSingleItem(text: "Mert",color:Colors.pink),
                     
                    ],
                  )),
                ],
              ),
              Row(
                children: [
                  Container(child: ColumnSingleItem(text: "Onur",color:Colors.purple)),         
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('FirstButton');
          },
          child: Icon(
            Icons.build,
            color: Colors.white70,
          ),
          backgroundColor: Colors.black12,
        ),
      ),
    );
  }
}

class ColumnItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      color: Colors.yellow,
      margin: EdgeInsets.all(4.0),
    );
  }
}

class ColumnSingleItem extends StatelessWidget{
  final String text;
  final Color color;

  const ColumnSingleItem({super.key, required this.text, required this.color});
  @override
  Widget build(BuildContext context){
    return 
                  Container(child: Center(child: Text(text)),
                    height: 75,
                    width: 83,
                    color: color,
                    margin: EdgeInsets.all(4.0),
                   );
  }
}

