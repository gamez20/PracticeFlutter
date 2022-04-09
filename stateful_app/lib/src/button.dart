// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

//TODO:
/*
  El trabajo de statefullWidget es tomar  datos  y crear una clase de estado 
  El trabajo del state esta compuesto por dos partes:
    - mantener algunos datos
    - actualizar  y contruir la interfaz de usuario usando esos datos

  1. Statefull se compone de dos clases
    - una donde se va a mostrar el widget
    - estado del widget



*/

// FIXME: 1. Clase principal statefullWidget
class MyButton extends StatefulWidget {
  // const MyButton({
  //   Key? key,
  // }) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

// FIXME: 2 . calse de estado
class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int indice = 0;
  List<String> collections = ['Flutter', 'es', 'genial'];

  void onPressButton() {
    // rerendiza el widget
    setState(() {
      flutterText = collections[indice];
      indice = indice < 2 ? indice +1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Statefull Widget"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                flutterText,
                style: TextStyle(fontSize: 40.0),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: onPressButton,
                child: Text("Actualizar"),
              )
            ],
          ),
        ));
  }



}
