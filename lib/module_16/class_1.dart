import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Class1API extends StatefulWidget {
  const Class1API({super.key});

  @override
  State<Class1API> createState() => _Class1APIState();
}

class _Class1APIState extends State<Class1API> {
  List users = [];

  Future fatchUsers() async{
  final response =await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
  headers: {
    'Accept' : 'application/json'
  }
  );

  log(response.body);

  if(response.statusCode == 200){
    users = jsonDecode(response.body);
  }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(user['name'][0]),
              ),
              title: Text(user['name']),
              subtitle: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Username: ${user['username']}',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),
                  Text('Email: ${user['email']}',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),
                  Text('Phone: ${user['phone']}',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),
                  Text('website: ${user['website']}',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
