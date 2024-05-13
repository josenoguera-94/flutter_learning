import 'package:flutter/material.dart';

class HomeSceen extends StatelessWidget {

  const HomeSceen({Key? key}) : super(key: key);
  // key sirve para identificar un widget dentro del contexto (context).

  @override
  Widget build(BuildContext context) {
    // BuildContext es el arbol de widgets. Sabe toda la información de los widgets que se están construyendo.       

    // throw UnimplementedError(); // Este error se lanza cuando no se ha implementado el método.
    // la mayoría de los widgets tienen un child o un children.
    // Scaffold es un widget que nos permite crear una pantalla con un AppBar y un body.
    // tiene un body


    // var fontSize30 = const TextStyle(fontSize: 30);
    const double fontSize = 30;
    int counter = 0;

    return Scaffold( // appBar, body, floatingActionButton, drawer, bottomNavigationBar, etc.
      // backgroundColor: Colors.indigo, // backgroundColor es una propiedad que nos permite cambiar el color de fondo del Scaffold.
      
      appBar: AppBar( // AppBar es un widget que no tiene constante en su constuctor.
        title: const Text('Contador'),
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.blueAccent,
      ), // appBar es una propiedad que nos permite agregar un AppBar al Scaffold. Tiene que ser de tipo o heredado PreferredSizeWidget.
      
      body: const Center(
        //la mayoría de los widgets tienen un child o un children.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          // mainAxisAlignment es una propiedad que nos permite alinear los widgets de forma vertical. 
          //sus opciones: .start, .center, .end, .spaceAround, .spaceBetween, .spaceEvenly.
          
          // crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment es una propiedad que nos permite alinear los widgets de forma horizontal.
          // sus opciones: .start, .center, .end, .stretch.
          children: <Widget>[ //<Widget>[] es una lista de widgets.
            Text(
              'Número de clicks:', 
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              )
            ),
            Text('0', style: TextStyle(fontSize: fontSize)),
          ],
        ), 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // centerFloat, centerDocked, endFloat, endDocked, startTop, etc.
      floatingActionButton: FloatingActionButton( // se puede agregar cualquier widget.
        onPressed: () { // onPressed es una propiedad que nos permite agregar una función al botón. puede ser nulo
          counter++;
          // print(counter);
        },
        child: const Icon(Icons.add), //Icon es un widget que nos permite agregar un icono.
      )
    );
  }
}