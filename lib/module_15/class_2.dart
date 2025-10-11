import 'package:flutter/material.dart';

import 'class_1.dart';

class LifeCycle extends StatefulWidget {
   LifeCycle({super.key}){
    print('1 Constructor');
  }

  @override
  State<LifeCycle> createState(){ //once
     print('2 create state');
  return  _LifeCycleState();
  }
}

class _LifeCycleState extends State<LifeCycle> {
  String name = 'Demo';
  Color bgColor = Colors.red;
  @override
  void initState() { //once
    // TODO: implement initState
    print('3 InitState');
    name = 'Taufiq';
    bgColor = Colors.purple;
    super.initState();
  }

  @override
  void didChangeDependencies() { //once
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies called');
    name = 'Sabbir';
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() { //once
    // TODO: implement dispose
    print('dispose called');
    super.dispose();
  }



  @override
  Widget build(BuildContext context) { // Many time
    print('Build called');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: bgColor,
                border: Border.all(color: Colors.blueAccent,width: 2),
              ),
              child: Text(
                'Hello This ${name}',
                style: TextStyle(fontSize: 30,color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
