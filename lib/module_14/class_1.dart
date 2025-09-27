import 'package:flutter/material.dart';
class Res extends StatelessWidget {
  const Res({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final bool isTablet = screenSize.width > 600;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text(index.toString()),
                    );
                  }),
              
              Text('device in ${orientation} Mood',
              style: TextStyle(
                fontSize: 25
              ),
              ),

            orientation == Orientation.landscape ?  Text('This is ln mood',
              style: TextStyle(
                fontSize: 32,
                color: Colors.red
              ),
              ) : SizedBox(),

              orientation == Orientation.portrait ?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.phone_android, size: 50),
                  Icon(Icons.tablet, size: 50),
                  Icon(Icons.desktop_windows, size: 50),
                  Icon(Icons.apple, size: 50),
                ],
              ) :

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.phone_android, size: 50),
                  Icon(Icons.tablet, size: 50),
                  Icon(Icons.desktop_windows, size: 50),
                  Icon(Icons.apple, size: 50),
                ],
              ),

              Text('Fixed size'),
              SizedBox(height: 8,),
              Container(
                width: 150,
                height: 100,
                color: Colors.blue,
                child: Text('150x100'),
              ),
          
              Text('Aspect ratio'),
              SizedBox(height: 8,),
              AspectRatio(aspectRatio:21/9 ,
              child: Container(
                color: Colors.red,
              ),
              ),

              SizedBox(height: 8,),

              Container(
                color: Colors.purple,
                width: screenSize.width*0.5,
                height: screenSize.height*0.2,
              ),

              Text('This is text',
                style: TextStyle(
                    fontSize: screenSize.width > 600 ? 32 : 18
                ),
              ),

              Text('This is text 2',
                style: TextStyle(
                    fontSize: 0.04*screenSize.height
                ),
              ),

              SizedBox(height: 8,),

              FractionallySizedBox(
                widthFactor: 0.1,
                child: Container(
                  height: 60,
                  color: Colors.green,
                ),
              ),

              SizedBox(height: 10,),

              Text('Adaptive layout ${isTablet ? 'Tablet' : 'Mobile'}'
                  ),

            isTablet ?  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone,size: 50,),
                  Icon(Icons.tablet,size: 50,),
                  Icon(Icons.window_sharp,size: 50,),
                ],
              ) :

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone,size: 50,),
                  Icon(Icons.tablet,size: 50,),
                  Icon(Icons.window_sharp,size: 50,),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
