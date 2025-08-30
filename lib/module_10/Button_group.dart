import 'package:flutter/material.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      // backgroundColor: Colors.grey.withOpacity(0.9),
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Button group'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Text('Submit')),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 300,
              // width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text('Submit')),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(onPressed: () {}, child: Text('Outline Button')),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Read more',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.phone_android,
              size: 50,
              color: Colors.red,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: 30,
                  color: Colors.red,
                )),

            
            GestureDetector(
              onLongPress: (){
                print('Taped on long press');
              },
              onDoubleTap: (){
                print('Double tap');
              },
              onTap: (){
                print('Taped on test');
              },
              child: Text('This is test text',
              style: TextStyle(
                fontSize: 50
              ),
              ),
            ),


            InkWell(
              onTap: (){
                print('On taped inkwell');
              },
              child: Text('This is test text 2',
                style: TextStyle(
                    fontSize: 50
                ),
              ),
            ),




            

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,

        onPressed: (){
        print('Clicked on add');
      }, child: Icon(Icons.add),),
    );
  }
}
