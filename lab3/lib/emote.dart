import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Emotes extends StatelessWidget {
  const Emotes({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 234, 146, 31),

        title: Text("Gestos"),
      ),

      body: Center(
        // Detalles de la aplicación
      child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Gestos", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
          ],  
          
        )
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
      ElevatedButton(onPressed: () {
            Navigator.pop(context);
      },
            child: const Text("Regresar")),
      ]
    );
  }
}