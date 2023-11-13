import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);

  int _randomNum = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('RedPage'), 
          backgroundColor: Colors.red,
          automaticallyImplyLeading: false,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Red Page', 
              style: TextStyle(fontSize: 24),),
              ElevatedButton(onPressed: (){
                _randomNum = Random().nextInt(100);
                print("asdasdasd = $_randomNum");
                Navigator.of(context).pop(_randomNum);            
              }, child: Text('Geri Dön')),
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
      ),
    );
  }
}