import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab3/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Contador
  String icon1 = "assets/icons/Icono1.svg";
  String font1 = "fonts/SuperMario256.ttf";
  String iconActual = "assets/icons/Neutral.svg";
  String _estadoActual = " ";

  void _incrementCounter() {
    setState(() {
      _counter++;
      estado();
    });
  }
  void _reduceCounter(){
    setState((){
    _counter--;
    estado();
    });
  }
  void _zeroCounter(){
    setState((){
    _counter = 0;
    estado();
    });
  }

  void estado(){
    switch(_counter){
      case 15: _estadoActual = "Ganaste";
      iconActual = "assets/icons/Ganaste.svg";
      break;
      case 10: _estadoActual = "Perdiste";
      iconActual = "assets/icons/Perdiste.svg";
      break;
      default: _estadoActual = " ";
      iconActual = "assets/icons/Neutral.svg";
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Card(
          color: Color.fromARGB(255, 242, 240, 215),
          child:Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

            //SvgPicture.asset(iconActual, height: 10, width: 10,),
            const Text(
              'Numero actual:',
              style: TextStyle(fontFamily: 'Mario', fontSize: 25)
            ),
            Text(
              '$_counter',
              style: TextStyle(fontFamily: 'Mario', fontSize: 30),
            ),
            Text(
              '$_estadoActual',
              style: TextStyle(fontFamily: 'Mario', fontSize: 25),
            ),
            SvgPicture.asset(iconActual, height: 100, width: 100,), // Cambiar iconos y listo

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          // Reducir contador  
          FloatingActionButton(
            onPressed: _reduceCounter,
            child: const Icon(Icons.minimize),
             tooltip: 'Menos'
          ),

           FloatingActionButton(
            onPressed: _zeroCounter,
            child: SvgPicture.asset(icon1),
             tooltip: 'Reiniciar'
          ),

          // Aumentar Contador
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
             tooltip: 'Más'
          ),
          
          
          ],
        ),
      ],
          
          )
        ),
      ),
    );
  }
}
