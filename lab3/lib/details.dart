import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 234, 31, 89),

        title: Text("Detalles de la app"),
      ),

      body: Center(
        // Detalles de la aplicación
      child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Detalles del funcionamiento", style: TextStyle(fontFamily: "Mario", fontSize: 20)),
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