import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_praktikum_pbm/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Login(),
    );
  }
}
