import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 64, 207, 225),

        title: const Text('Lista'),
      ),

      body: Center(
        //Lista
        child: ListView(
          children: <Widget>[
            //Los elementos de la lista se guardan en conteiner
            Container(
                height: 55,
                color: Color.fromARGB(255, 21, 124, 241),
                child: const Center(
                  child: Text("1er objeto", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
                )),
            Container(
                height: 55,
                color: Color.fromARGB(255, 21, 124, 241),
                child: const Center(
                  child: Text("2do objeto",  style: TextStyle(fontFamily: "Mario", fontSize: 20)),
                )),
            Container(
                height: 55,
                color: Color.fromARGB(255, 21, 124, 241),
                child: const Center(
                  child: Text("3er objeto",  style: TextStyle(fontFamily: "Mario", fontSize: 20)),
                )), 
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
      ElevatedButton(onPressed: () {
            Navigator.pop(context);
      },
            child: const Text("Volver")),
      ]
    );
  }
}