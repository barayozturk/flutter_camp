import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_operations/red_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp', 
      home: Mainpage(),
    );
  }
}

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: ()async{
                int? _awaitNum = await Navigator.push<int>(context, CupertinoPageRoute(
                  builder: (redContext) => RedPage(),));

                  print('Ana sayfadaki sayı $_awaitNum');
              },
              child: Text('Red Page Enter IOS'), style: ElevatedButton.styleFrom(primary: Colors.red.shade300),),
              ElevatedButton(onPressed: (){
                //Navigator.push(context, route);
                Navigator.of(context).push<int>(MaterialPageRoute(
                  builder: (redContext)=>RedPage())).then((int? value) => debugPrint('gelen sayı $value'));
              },
              child: Text('Red Page Enter Android'), style: ElevatedButton.styleFrom(primary: Colors.red.shade600),),
              ElevatedButton(onPressed: (){
                Navigator.of(context).maybePop();
              },
              child: Text(
                'MybePop'
                ), 
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),),
              ElevatedButton(onPressed: (){
                if (Navigator.canPop(context)) {
                  print('MybePop');
                }else{
                  print('Do not');
                }
                },
              child: Text('Red Page Enter Android'), style: ElevatedButton.styleFrom(primary: Colors.red.shade600),)
            ],
          ),
        ),
      );
  }
}