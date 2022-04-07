import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

/*
FIXME: StatelessWidget se extiende cuando no contiene datos


*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Primera aplicacion"))),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCard(
            title:Text(
              "I love FLutter",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30.0
                )
              ),
            icon: Icon(
              Icons.favorite,
              color: Colors.redAccent,
              size: 40.0,
            ),
          ) 

        ],
      )),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  //FIXME: constructor:
  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context){

    return Card(
          child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
              children: [
                this.title,
                this.icon
               ],
              ),
            )
          );
  }

}
