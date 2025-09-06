import 'package:flutter/material.dart';
import 'home.dart';
import 'module_10/Button_group.dart';
import 'module_10/class_3.dart';
import 'module_10/input_flutter.dart';
import 'module_11/class_2.dart';
import 'module_11/gridViewClass1.dart';
import 'module_11/module_11_class_1.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext contex){
    return MaterialApp(
      title: 'Batch-12',
      home: Module11Stack(),
    );
  }
}