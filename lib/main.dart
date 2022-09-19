

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:section13/desktop.dart';
import 'package:section13/mobile.dart';

void main() {
  runApp(MyApp());
}

//hello 2

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            //print(constraints.minWidth.toInt());
            
            if(constraints.minWidth.toInt() <= 560) {
              return MobileScreen();
            }
            return DesktopScreen();
          }),
    );
  }
}
//can use MediaQuery
//ex:  return MediaQuery(
// data: MediaQuery.of(context).copyWith(textScaleFactor: 0.7),
//child: DesktopScreen(),
// );
//

