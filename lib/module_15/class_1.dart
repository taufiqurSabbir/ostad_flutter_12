import 'package:flutter/material.dart';
class StateClass extends StatefulWidget {
  const StateClass({super.key});

  @override
  State<StateClass> createState() => _StateClassState();
}

class _StateClassState extends State<StateClass> {
  int num = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(num.toString(),
                style: TextStyle(
                  fontSize: 80,
                  color: Colors.blue
                ),
                ),
                Row(
                  children: [
                    Spacer(),
                    IconButton(onPressed: (){
                      setState(() {
                        num++;
                        print('num=== $num');
                      });

                    }, icon: Icon(Icons.add,size: 40,)),
                    Spacer(),
                    IconButton(onPressed: (){
                      setState(() {
                        num--;
                      });

                      print('num=== $num');
                    }, icon: Icon(Icons.minimize,size: 40,)),
                    Spacer()
                  ],
                )
              ],
            )),
      ),
    );
  }
}
