import 'package:flutter/material.dart';

class Gridviewclass1 extends StatelessWidget {
  const Gridviewclass1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
        backgroundColor: Colors.red,
      ),

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10

          ),
          itemCount: 20,
          itemBuilder: (context,index){
            return Container(
                        width: 120,
                        color: Colors.blue[100*((index%8)+1)],
                        child: Center(child: Text('Item = $index')),
                      );
          }

      ),
      // body: GridView.count(
      //     crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(10, (index){
      //     return Card (
      //       elevation: 20,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(80)
      //       ),
      //       color: Colors.red,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.phone,color: Colors.white,),
      //           Text('Cash Out',
      //           style: TextStyle(
      //             fontSize: 20,
      //             color: Colors.white
      //           ),
      //           )
      //         ],
      //       ),
      //     );
      //   })
      //
      // ),
    );
  }
}
