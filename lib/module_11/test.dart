import 'package:flutter/material.dart';
import 'package:flutter_batch_12/module_11/page2.dart';
class Test extends StatelessWidget {
  final name;
  const Test({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test view'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test'),
            Text(name),
            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>page2()));
            }, child: Text('Page2')),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back'))
          ],
        ),
        
      ),
    );
  }
}
