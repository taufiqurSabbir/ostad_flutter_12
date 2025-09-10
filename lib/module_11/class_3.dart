import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    showAlertDialog(){

      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text('This is title'),
          content: Text('Are you sure....?'),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Cancle')),
            ElevatedButton(onPressed: (){}, child: Text('Submit'))
          ],
        );
      });
    }

    showAlertDialogWithIcon(){
      showDialog(context: context,
          barrierDismissible: false,
          builder: (context){

        return AlertDialog(
          title: Text('Installation block'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(Icons.warning,color: Colors.red,size: 40,),
                  SizedBox(width: 5,),
                  Text('Warring')
                ],
              ),
              SizedBox(height: 10,),
              Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
              style: TextStyle(
                color: Colors.grey
              ),
              ),

            ],
          ),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Ok')),
          ],
        );
      });
    }

    showAlertDialogWithIcon2(){
      showDialog(context: context,
          barrierDismissible: false,
          builder: (context){

            return AlertDialog(
              alignment: Alignment.topLeft,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              title: Text('Installation block'),
              content: Container(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.star),

                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.star),

                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.star),

                    ),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.star),

                    ),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.star),

                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(Icons.star),

                    )
                  ],
                ),
              ),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Ok')),
              ],
            );
          });
    }


    showSimpleDialog(){
      showDialog(context: context, builder: (context)=>SimpleDialog(
        title: Text('Simple dialog'),
        children: [
          SimpleDialogOption(
            child: Text('Option-1'),
          ),

          SimpleDialogOption(
            child: TextField(),
          )
        ],
      ));
    }

    showBottomSheetAlert(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Chose options',
            style: TextStyle(
              fontSize: 18
            ),
            ),
            ListTile(
              title: Text('Option-1'),

            ),
            ListTile(
              title: Text('Option-1'),

            ),
            ListTile(
              title: Text('Option-1'),

            ),
            ListTile(
              title: Text('Option-1'),

            ),
          ],
        ),
      ));
    }
    
    showCustomDialog(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network('https://media.istockphoto.com/id/1210768445/photo/skyscraper-in-dhaka-metropolitan-area.jpg?s=612x612&w=0&k=20&c=qGFV2qpVXkUNtm8KYT2avrSZwcBcoeM9wIp4LdADgrI='),
            SizedBox(height: 10,),
            Text('Custom Dialog'),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Close'))
          ],
        ),
      ));
    }

    showSnackBar(){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('This is snackbar'))
      );
    }

    showLoadingDialog(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
           children: [
             CircularProgressIndicator(),
             SizedBox(width: 16,),
             Text('Loading.....')
           ],
          ),
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert view'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              showAlertDialog();
            }, child: Text('Alert Dialog')),

            ElevatedButton(onPressed: () {
              showAlertDialogWithIcon();
            }, child: Text('Alert Dialog with icon')),
            ElevatedButton(onPressed: () {
              showSimpleDialog();
            }, child: Text('Dialog with options')),
            ElevatedButton(onPressed: () {
              showBottomSheetAlert();
            }, child: Text('Bottom sheet')),
            ElevatedButton(onPressed: () {
              showCustomDialog();
            }, child: Text(' Dialog')),
            ElevatedButton(onPressed: () {
              showLoadingDialog();
            }, child: Text(' Loading')),
            ElevatedButton(onPressed: () {
              showSnackBar();
            }, child: Text(' Snackbar')),
            ElevatedButton(onPressed: () {
              showAlertDialogWithIcon2();
            }, child: Text(' AlertDialog')),
          ],
        ),
      ),
    );
  }
}
