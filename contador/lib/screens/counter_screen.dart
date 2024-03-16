import 'package:flutter/material.dart';


// Es el widget que se va a encargar de construir la pantalla.
// solo que se agrega un estado mutable.
class CounterScreen extends StatefulWidget {

  const CounterScreen({Key? key}) : super(key: key);
  // key sirve para identificar un widget dentro del contexto (context).

  @override
  State<CounterScreen> createState() => _CounterScreenState();

}
   
  class _CounterScreenState extends State<CounterScreen> {

      int counter = 0; //se declaran las propiedades, para el estado mutable.

    @override
    Widget build(BuildContext context) {
      
      // aqui se declaran las variables.
      const double fontSize = 30;

      return Scaffold(
        appBar: AppBar(
          title: const Text('Contador'),
          centerTitle: true,
          elevation: 2,
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton( // aparece en la parte izquierda del AppBar.
            icon: const Icon(Icons.refresh_rounded), // Icons.arrow_back
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
          ],
          // leading: IconButton( // con leading aparece en la parte izquierda del AppBar.
          //   icon: const Icon(Icons.refresh_rounded), // Icons.arrow_back
          //   onPressed: () {
          //     print('leading');
          //   },
          // ),
        ),
        body:  Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  // options: .start, .center, .end, .spaceAround, .spaceBetween, .spaceEvenly.
          children: <Widget>[ //<Widget>[] es una lista de widgets.
            // if (counter == 1) solo se puede hacer un if en el build, si se quiere hacer un if en otro lugar se debe hacer con un operador ternario.
            //   const Text(...)
            Text(
              'Número de click${counter == 1 ? '':'s'}:', 
              style: const TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold)
            ),
            Text('$counter', style: const TextStyle(fontSize: fontSize)), // TextStyle es una clase que nos permite darle estilo al texto.
          ],
        ), 
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // mainAxisAlignment es una propiedad que nos permite alinear los widgets hijos de forma horizontal. opciones: MainAxisAlignment.start, MainAxisAlignment.center, MainAxisAlignment.end, MainAxisAlignment.spaceAround, MainAxisAlignment.spaceBetween, MainAxisAlignment.spaceEvenly.
          // crossAxisAlignment: CrossAxisAlignment.center, // crossAxisAlignment es una propiedad que nos permite alinear los widgets hijos de forma vertical.
          children: [

            FloatingActionButton(
              onPressed: () {
                if (counter == 0) return;
                counter--;
                setState(() {});
                // setState es un método que nos permite actualizar el estado y redibuja el widget
                // del widget. // counter++ puede ir dentro de la funcion setState tambien se puede agregar la función.
                // print("counter: $counter");
              },
              child: const Icon(Icons.exposure_minus_1_outlined), // opciones: .add, .remove, .add_circle, .remove_circle, .add_circle_outline, .remove_circle_outline, .add_circle_sharp, .remove_circle_sharp, .add_sharp, .remove_sharp, .add_outlined, .remove_outlined, .add_rounded, .remove_rounded, .add_alert, .remove_alert, .add_alert_outlined, .remove_alert_outlined, .add_alert_rounded, .remove_alert_rounded, .add_alert_sharp, .remove_alert_sharp, .add_alert_sharp_outlined, .remove_alert_sharp_outlined, .add_alert_sharp_rounded, .remove_alert_sharp_rounded, .add_alert_sharp_sharp, .remove_alert_sharp_sharp, .add_alert_sharp_sharp_outlined, .remove_alert_sharp_sharp_outlined, .add_alert_sharp_sharp_rounded, .remove_alert_sharp_sharp_rounded, .add_alert_sharp_sharp_sharp, .remove_alert_sharp_sharp_sharp, .add_alert_sharp_sharp_sharp_outlined, .remove_alert_sharp_sharp_sharp_outlined, .add_alert_sharp_sharp_sharp_rounded, .remove_alert_sharp_sharp_sharp_rounded, .add_alert_sharp_sharp_sharp_sharp, .remove_alert_sharp_sharp_sharp_sharp, .add_alert_sharp_sharp_sharp_sharp_outlined, .remove_alert_sharp_sharp_sharp_sharp_outlined, .add_alert_sharp_sharp_sharp_sharp_rounded, .remove_alert_sharp_sharp_sharp_sharp_rounded, .add_alert_sharp_sharp_sharp_sharp_sharp, .remove_alert_sharp_sharp_sharp_sharp_sharp, .add_alert_sharp_sharp_sharp_sharp_sharp_outlined, .remove_alert_sharp_sharp_sharp_sharp_sharp_outlined, .add_alert_sharp_sharp_sharp_sharp_sharp_rounded, .remove_alert_sharp_sharp_sharp_sharp_sharp_rounded, .add_alert_sharp_sharp_sharp_sharp_sharp_sharp, .remove_alert_sharp_sharp_sharp_sharp_sharp_sharp, .add_alert_sharp_sharp_sharp_sharp_sharp_sharp_outlined, .remove_alert_sharp_sharp_sharp_sharp_sh
          ),
          // const SizedBox(width: 20),

          FloatingActionButton(
              shape: const StadiumBorder(), //RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
              // shape sirve para darle forma al botón.
              onPressed: () {

                counter = 0;
                setState(() {});
                // setState es un método que nos permite actualizar el estado y redibuja el widget
                // del widget. // counter++ puede ir dentro de la funcion setState tambien se puede agregar la función.
                // print("counter: $counter");
              },
              child: const Icon(Icons.restart_alt_outlined),
          ),
          
          // const SizedBox(width: 20), // heigth: 20, width: 20, // SizedBox es un widget que nos permite agregar un espacio entre widgets.
        
            
          // SizedBox es un widget que nos permite agregar un espacio entre widgets.
        
            CustomButtom( 
              icon:  Icons.exposure_plus_1_outlined,
              onPressed: () {
                setState(() {counter++;});
              },
              ),
        ],)
      );
    }
  }


  // cuando se selecciona un widget y se presiona crtl + . se puede envolver el widget en un nuevo widget.

class CustomButtom extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;
  
  // final onPressed
  const CustomButtom({ // o puede ser fueda del corchete. this.icon pero es posicional
    super.key, 
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // onPressed: null , deshabilita el botón. onpressed: () {}, habilita el botón. pero no retorna nada, e sun voidCallback.
      // onPressed: () {
    
    
      //   // counter++; // o this.counter++; counter+=1; counter = counter + 1;
      //   // setState(() {});
      //   // setState(() { counter++; });
      //   // setState es un método que nos permite actualizar el estado y redibuja el widget
      //   // del widget. // counter++ puede ir dentro de la funcion setState tambien se puede agregar la función.
      //   // print("counter: $counter");
    
      // },
  enableFeedback: true,
  // backgroundColor: Color.fromARGB(250, 200, 100, 150),
  elevation: 2,
  onPressed: onPressed,
      child: Icon(icon),
              );
  }
}


