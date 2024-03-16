import 'package:flutter/material.dart';
import 'package:contador/screens/counter_screen.dart';
// import 'package:contador/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

// Solo podemos extender de StatelessWidget o StatefulWidget para que sea un widget.
// StatelessWidget - StatelessWidget es una clase que crea un widget que no requiere un estado mutable. es más estático
// StatafulWidget - StatefulWidget es una clase que crea un widget que requiere un estado mutable.

class MyApp extends StatelessWidget {

  // El constructor de la clase MyApp recibe un parámetro llamado key de tipo Key.
  // const MyApp({super.key});
  //
  // Key es una clase que nos permite identificar un widget de forma única.
  const MyApp({Key? key}) : super(key: key);
 


  // El método build es el encargado de construir el widget.
  @override
  Widget build (BuildContext context) {
    // return const MaterialApp( // MaterialApp es un widget que nos permite configurar la apariencia de la aplicación.
    //   debugShowCheckedModeBanner: false, // debugShowCheckedModeBanner es una propiedad que nos permite ocultar el banner de debug.
    //   home: Center( // Center es un widget que nos permite centrar un widget hijo.
    //     child: Text('Hola Mundo'), // Text es un widget que nos permite mostrar texto.
    //   ),
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( // ThemeData es una clase que nos permite configurar el tema de la aplicación.
        useMaterial3: true, // useMaterial3 es una propiedad que nos permite habilitar el nuevo diseño de Material.
        colorSchemeSeed: Colors.blue, // colorSchemeSeed es una propiedad que nos permite cambiar el color de la aplicación.
      ),
      home: const CounterScreen()
    );
  }

  // Flutter recomienda trabajar con constantes para evitar que se vuelva a construir el widget.
  // si no se modifica el valor de la constante, el widget no se vuelve a construir.
}