import 'package:flutter/material.dart';
class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 2 view'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Test'),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back'))
          ],
        ),

      ),
    );
  }
}
