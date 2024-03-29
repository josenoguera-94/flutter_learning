import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/widgets/chat/other_message_bubble.dart';
import 'package:yes_no_app/widgets/message_field_box.dart';
import 'package:yes_no_app/providers/chat_provider.dart';
import 'package:yes_no_app/entities/message.dart';

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

    final chatProvider = context.watch<ChatProvider>(); 
    // watch es un método que permite escuchar los cambios de un provider, de la 
    // clase ChatProvider, y se ejecuta cada vez que el provider cambia


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

                
                controller: chatProvider.scrollController, // controller es una propiedad que recibe un ScrollController, 
                
                
                // itemBuilder recive (context, index) {} es una función que recibe el contexto, que es el
                // arbol de widgets y el índice del elemento a renderizar, que listView.builder() está utilizando
                // o (context, index) => Widget() recive el contexto y el índice y retorna un widget
                  itemCount: chatProvider.messageList.length,// itemCount: 50, // cantidad de elementos a renderizar si no se especifica será infinito
                  itemBuilder: (BuildContext context, int index) {
                    // return MyMessageBubble(); // retorna un widget
                    // return index.isEven ? const MyMessageBubble() : const OtherMessageBubble(); // isEven es un método que retorna true si el número es par
                    final message = chatProvider.messageList[index]; // obtiene el mensaje en la posición index
                    return (message.fromWho == FromWho.me) 
                    ? MyMessageBubble(message: message) 
                    : OtherMessageBubble(message: message);
                  }
                )
                // child: Container(
                //   color: Colors.red
                // )
              ),
              MessageFieldBox(
                onValue: (value) => chatProvider.sendMessage(value),
                // onValue: chatProvider.sendMessage, // Cuando la misma cantidad de argumentos se pasan a una función, se puede pasar la función directamente
              )
          ]
        )
      )
    );
  }
}
