import 'package:flutter/material.dart';
import 'home.dart';
import 'module_10/Button_group.dart';
import 'module_10/input_flutter.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext contex){
    return MaterialApp(
      title: 'Batch-12',
      home: FlutterInput(),
    );
  }
}