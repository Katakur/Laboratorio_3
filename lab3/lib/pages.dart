import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab3/emote.dart';
import 'package:lab3/main.dart';
import 'package:lab3/sensors.dart';
import 'details.dart';
import 'list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  //State<MyHomePage> createState() => _MyHomePageState();

  State<MyHomePage> createState() {
    print('create state');
    print('------------------------------');
    return _MyHomePageState();
  } 
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Contador
  String icon1 = "assets/icons/Icono1.svg";
  String font1 = "fonts/SuperMario256.ttf";
  String iconActual = "assets/icons/Neutral.svg";
  String iconList1 = "assets/icons/Gesto.svg";
  String iconList2 = "assets/icons/Lista.svg";
  String iconList3 = "assets/icons/Sensor.svg";
  String iconList4 = "assets/icons/Info.svg";
  String iconList5 = "assets/icons/Inicio.svg";
  String _estadoActual = " ";

  _MyHomePageState() {
    print('_MyHomePageState constructor [creando objeto]');
    print('------------------------------');
  }

  void initState() {
    super.initState();
    print('initState [Inicializando estado actual]');
    print('initState [mounted = $mounted]');
    print('------------------------------');
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies [Dependencias cambiadas]');
    print('------------------------------');
  }

  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget [Widget actualizado]');
    print('------------------------------');
  }

  void setState(VoidCallback fn) {
    super.setState(fn);
    print('setState [Estado restablecido]');
    print('------------------------------');
  }

  void deactivate() {
    print('deactivate [Widget siendo removido del arbol]');
    print('------------------------------');
    super.deactivate();
  }

  void dispose() {
    super.dispose();
    print('dispose: eliminando esta');
    print('dispose: mounted = $mounted');
    print('------------------------------');
  }

  void reassemble() {
    super.reassemble();
    print('reassemble: mounted = $mounted');
  }

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
    print('build [Building Widget]');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //SvgPicture.asset(icon1),
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            
            ListTile(
              title: const Text('Detalles'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Details()),
                );
              },
            ),
            ListTile(
              title: const Text('Lista'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const List()),
                );
              },
            ),
            ListTile(
              title: const Text('Sensores'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sensors()),
                );
              },
            ),
            ListTile(
              title: const Text('Gestos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Emotes()),
                );
              },
            ),
          ],
        ),
      ),
      
      body: Center(
        child: Card(
          color: Color.fromARGB(255, 242, 240, 215),
          child:Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

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
          ElevatedButton(
            onPressed: _reduceCounter,
            child: const Icon(Icons.minimize),
            //tooltip: 'Menos'
          ),

          ElevatedButton(
            onPressed: _zeroCounter,
            child: SvgPicture.asset(icon1),
            //tooltip: 'Reiniciar'
          ),

          // Aumentar Contador
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
            //tooltip: 'Más'
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

