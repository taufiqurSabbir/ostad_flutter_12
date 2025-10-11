import 'package:flutter/material.dart';

import '../module_14/Expand_f.dart';
import 'class_2.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LifeCycle()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/YT.png'),
            SizedBox(height: 10,),
            Text('YouTube',
            style: TextStyle(fontSize: 28,
            color: Colors.red
            ),
            ),
            CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 2,
            )
          ],
        )
      ),
    );
  }
}
