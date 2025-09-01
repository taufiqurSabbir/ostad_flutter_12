import 'package:flutter/material.dart';

class Module10Class3 extends StatelessWidget {
  const Module10Class3({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 3 '),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Facebook_Logo_%282019%29.svg/2560px-Facebook_Logo_%282019%29.svg.png',
          width: 250,
          ),
          
          Image.asset('asset/YT.png',
          width: 250,
          ),

          Text('Login with Phone and password',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500
          ),
          ),

          SizedBox(height: 10,),

          Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        hintText: 'Phone number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please enter phone number';
                        }else if(value.length != 11){
                          return 'Please enter correct phone number';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please enter password';
                        }else if(value.length < 8){
                          return 'password must be at lest 8 characters';
                        }else{
                          return null;
                        }
                      },
                    ),

                    SizedBox(height: 50,),

                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      // width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                              if(_formkey.currentState!.validate()){
                                print(phoneController.text);
                                print(passwordController.text);
                                phoneController.clear();
                                passwordController.clear();
                              }



                          },
                          child: Text('Submit')),
                    ),
                  ],
                ),
              )

          ),


          Container(
            alignment: Alignment.center,
            height: 70,
              width: 220,

            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(
                width: 2,
                color: Colors.black
              ),
              
              borderRadius: BorderRadius.circular(15),
              
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(10, 20)
                ),
                BoxShadow(
                    color: Colors.red.withOpacity(0.3),
                    offset: Offset(5, 10)
                )
              ]

            ),
            child: Text('This is Continer'),
          ),

          SizedBox(height: 30,),

          Card(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('This is card'),
            )
          )

        ],
      ),
    );
  }
}
