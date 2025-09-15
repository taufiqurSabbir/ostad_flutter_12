import 'package:flutter/material.dart';

import '../module_11/class_2.dart';
import '../module_11/gridViewClass1.dart';
import 'TravelHomeScreen.dart';

class Module12Class1 extends StatelessWidget {
  const Module12Class1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab'),
          backgroundColor: Colors.teal,
          bottom: TabBar(
              // isScrollable: true,
            indicatorColor: Colors.amber,
              indicatorWeight: 4,
              indicatorPadding: EdgeInsets.all(5),
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),

              ),
              labelStyle: TextStyle(
                fontSize: 16,

              ),
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                fontSize: 15,

              ),
              tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Fav',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Setting',
            ),

          ]),
        ),
        body: TabBarView(children: [
          // Container(
          //   height: 200,
          //   color: Colors.red,
          //   child: Center(
          //     child: Text('Home', style: TextStyle(
          //       fontSize: 20,
          //       color: Colors.white
          //     ),),
          //   ),
          // ),
          // Container(
          //   height: 200,
          //   color: Colors.blue,
          //   child: Center(
          //     child: Text('Fav', style: TextStyle(
          //       fontSize: 20,
          //       color: Colors.white
          //     ),),
          //   ),
          // ),
          // Container(
          //   height: 200,
          //   color: Colors.green,
          //   child: Center(
          //     child: Text('Setting', style: TextStyle(
          //       fontSize: 20,
          //       color: Colors.white
          //     ),),
          //   ),
          // ),

          TravelHomeScreen(),
          Gridviewclass1(),
          Module11Stack(),
        ]),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius:40,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s'),
                  ),
                  SizedBox(height: 5,),
                  Text('Taufiqur Sabbir'),
                  Text('taufiqur2511@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                  )
                ],
              )),
              
              ListTile(
                visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                title: Text('Home'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridviewclass1()));
                },
              ),
              Divider(),
              ListTile(
                title: Text('Item-1'),
              ),
              Divider(),
              ListTile(
                title: Text('Item-2'),
              ),
              Divider(),
              ListTile(
                title: Text('Item-3'),
              ),
              Divider(),
              ListTile(
                title: Text('Item-4'),
              ),
              Divider(),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius:40,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s'),
                  ),
                  SizedBox(height: 5,),
                  Text('Taufiqur Sabbir'),
                  Text('taufiqur2511@gmail.com',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ],
              )),

              ListTile(
                visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                title: Text('Home'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridviewclass1()));
                },
              ),
              Divider(),
              ListTile(
                title: Text('Item-1'),
              ),
              Divider(),
              ListTile(
                title: Text('Item-2'),
              ),
              Divider(),
              ListTile(
                title: Text('Item-3'),
              ),
              Divider(),
              ListTile(
                title: Text('Item-4'),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
