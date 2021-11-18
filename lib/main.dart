import 'package:flutter/material.dart';
import 'package:layout_prac/screen/service/service_screen.dart';
import 'package:layout_prac/screen/trading/trading_screen.dart';

import 'screen/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '모두의 거래',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
