import 'package:flutter/material.dart';
import 'package:flutter_batch_12/module_11/test.dart';
import 'package:flutter_batch_12/module_11/widget/city_widgetr.dart';

class Module11Stack extends StatelessWidget {
  const Module11Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack view'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.deepPurple,
                  height: 200,
                  width: 200,
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  bottom: 20,
                  right: 20,
                  child: Container(
                    height: 180,
                    width: 180,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  left: 30,
                  right: 50,
                  top: 60,
                  bottom: 30,
                  child: Container(
                    color: Colors.blue,
                    height: 150,
                    width: 150,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                ),
                Positioned(
                  bottom: 15,
                  right: 5,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CityWidget(
                      img:
                          'https://media.istockphoto.com/id/1347665170/photo/london-at-sunset.jpg?s=612x612&w=0&k=20&c=MdiIzSNKvP8Ct6fdgdV3J4FVcfsfzQjMb6swe2ybY6I=',
                      title: 'London',
                      rating: '5.0'),
                  SizedBox(
                    width: 10,
                  ),
                  CityWidget(
                    img:
                        'https://res.cloudinary.com/jerrick/image/upload/v1687258926/6491872d1f962c001de086fa.jpg',
                    title: 'Dhaka',
                    rating: '5.0',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CityWidget(
                    img:
                        'https://static.toiimg.com/thumb/msid-52040615,width-748,height-499,resizemode=4,imgsize-167596/Burj-al-arab.jpg',
                    title: 'Dubai',
                    rating: '5.0',
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Test(name: 'Mehedi Hasan',)));

                  // Navigator.pushReplacement(
                  //     context, MaterialPageRoute(builder: (context) => Test()));


                  // Navigator.pushAndRemoveUntil(
                  //     context, MaterialPageRoute(builder: (context) => Test()), (route)=>false);

                },
                child: Text('Next page'))
          ],
        ),
      ),
    );
  }
}
