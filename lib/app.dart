import 'package:flutter/material.dart';
import 'home.dart';
import 'module_10/Button_group.dart';
import 'module_10/class_3.dart';
import 'module_10/input_flutter.dart';
import 'module_11/class_2.dart';
import 'module_11/class_3.dart';
import 'module_11/gridViewClass1.dart';
import 'module_11/module_11_class_1.dart';
import 'module_12/TravelHomeScreen.dart';
import 'module_12/class_1.dart';
import 'module_12/class_3.dart';
import 'module_14/Expand_f.dart';
import 'module_14/class_1.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      theme: ThemeData(

          brightness: Brightness.light,
          primaryColor: Colors.deepPurple,
          primarySwatch: Colors.teal,

          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),

            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey, width: 1.5)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.orange, width: 1.5)),

            hintStyle: TextStyle(
              color: Colors.deepPurple
            )
          ),

        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 16)
        ),
        
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),

        )

      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      title: 'Batch-12',
      home: Expand_f(),
      // initialRoute: '/bottomNav',
      // routes: {
      //   '/home' : (contex) => TravelHomeScreen(),
      //   '/class1' : (contex) => Alert(),
      //   '/class2' : (contex) => Module12Class1(),
      //   '/bottomNav' : (contex) => BottomNav(),
      // },
    );
  }
}
