import 'package:flutter/material.dart';

class Expand_f extends StatelessWidget {
  const Expand_f({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Test',
          style: TextStyle(
            fontSize: 20
          ),
          ),
          Text('Test',
          style: TextStyle(
            fontSize: 20
          ),
          ),
          Text('Test',
          style: TextStyle(
            fontSize: 20
          ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text(index.toString()),
                  );
                }),
          ),


          Container(
            width: 50,
            height: 200,
            color: Colors.red,
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: 200,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
