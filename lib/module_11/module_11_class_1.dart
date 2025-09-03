import 'package:flutter/material.dart';

class Module11Class1 extends StatelessWidget {
  const Module11Class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 11 class 1'),
        backgroundColor: Colors.red,
      ),

      body: ListView.separated(
        itemCount: 10,
          itemBuilder: (context,index){
           return Card(
                      child: ListTile(
                        leading: Icon(Icons.phone),
                        trailing: Icon(Icons.delete,color: Colors.red,),
                        title: Text('Taufiq $index'),
                        subtitle: Text('65126512561'),
                      ),
                    );
          },
          separatorBuilder: (context,index){
          return Divider(
            thickness: 3,

          );
          },
          ),

      // body: ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //     itemCount: 10,
      //     itemBuilder: (context,index){
      //       return Container(
      //         width: 120,
      //         color: Colors.blue[100*((index%8)+1)],
      //         child: Center(child: Text('Item = $index')),
      //       );
      //     }),
      
      // body: ListView.builder(
      //
      //   itemCount: 20,
      //     itemBuilder: (context,index){
      //     return Card(
      //       child: ListTile(
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //         title: Text('Taufiq $index'),
      //         subtitle: Text('65126512561'),
      //       ),
      //     );
      //     }
      //
      // ),

      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.red,),
      //       title: Text('Taufiq'),
      //       subtitle: Text('5145158125'),
      //     ),
      //   ],
      // ),
    );
  }
}
