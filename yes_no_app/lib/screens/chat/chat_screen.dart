import 'package:flutter/material.dart';

// los screen deben llevar en su mayoria Scaffold
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          // Padding es un widget que permite agregar padding a un widget hijo
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            // backgroundImage: AssetImage('assets/images/avatar.png'),
            backgroundImage: NetworkImage(
                'https://tiermaker.com/images/chart/chart/league-of-legends-2020-todos-os-champions-538139/teemopng.png'),
          ),
        ),
        title: const Text('Elon Musk'),
        centerTitle: false,
      ),
      // body: Container() es como un div en html
      body: _ChatView()
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea( // SafeArea es un widget que permite que el contenido no se superponga con la barra de estado
      // left: false, right: false, bottom: false, top: false
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0), // EdgeInsets.symmetric() crea un padding simétrico horizontal y/o vertical
          child: Column(
            children: [
              Expanded( // Expanded es un widget que permite que un widget hijo ocupe todo el espacio disponible
                child: ListView.builder( // ListView.builder es un widget que permite crear una lista de elementos de manera eficiente
                // listView.builder() es útil para listas largas, ya que solo renderiza los elementos que son visibles
                // funciona bajo demanda, a medida que el usuario se desplaza por la lista
                // otras opciones son ListView.separated() y ListView.custom() ...

                // itemBuilder recive (context, index) {} es una función que recibe el contexto, que es el
                // arbol de widgets y el índice del elemento a renderizar, que listView.builder() está utilizando
                // o (context, index) => Widget() recive el contexto y el índice y retorna un widget
                  itemCount: 10, // cantidad de elementos a renderizar si no se especifica será infinito
                  itemBuilder: (BuildContext context, int index) {
                    return Text( 'Hola mundo $index' );
                  }
                )
                // child: Container(
                //   color: Colors.red
                // )
              ),
              const Text("s")
          ]
        )
      )
    );
  }
}
