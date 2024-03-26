import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';
import 'package:yes_no_app/entities/message.dart';
import 'package:yes_no_app/helpers/get_yes_no_answer.dart';

// provider permite tener el ChangeNotifier
// de manera global o en un contexto más amplio
class ChatProvider extends ChangeNotifier {
  // ChangeNotifier es una clase que proporciona notificaciones a sus oyentes cuando cambia el estado.
  
  final ScrollController scrollController = ScrollController(); // ScrollController es un controlador que permite controlar el desplazamiento de un widget
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer(); // GetYesNoAnswer es una clase que permite obtener una respuesta de la API yesno.wtf

  List<Message> messageList = [
    // const Message(text: 'Hola', fromWho: FromWho.me),
    // const Message(text: 'Como estás?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {

    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
       await otherReply(); // await se o no puede utilizar también
    }

    notifyListeners(); // notifica a los oyentes que el estado ha cambiado
    moveScrollToBottom();
  }

  Future<void> otherReply() async {

    final otherMessage = await getYesNoAnswer.getAnswer();
    messageList.add(otherMessage);
    // final newMessage = Message(text: 'Estoy bien, gracias', fromWho: FromWho.other);
    // messageList.add(newMessage);

    // notifyListeners();
    // moveScrollToBottom();
  }


  Future<void> moveScrollToBottom() async {

    await Future.delayed(const Duration(milliseconds: 100)); // Future.delayed() es un método que permite retrasar la ejecución de una función
    // le colocamos un delay para que el scroll se mueva después de que se renderice el nuevo mensaje

    scrollController.animateTo( // animateTo es un método que permite animar el desplazamiento de un widget, opciones: animateTo, jumpTo, To
      // pide offset: que es un valor de desplazamiento o pocision, duration: que es la duración de la animación, curve: que es la curva de la animación, que rebote...
      scrollController.position.maxScrollExtent, // maxScrollExtent es una propiedad que retorna el valor máximo de desplazamiento
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut, // opciones: Curves.linear, Curves.decelerate, Curves.easeInOut, Curves.easeInCubic, Curves.easeOutCubic, Curves.easeInOutCubic, Curves.easeInExpo, Curves.easeOutExpo, Curves.easeInOutExpo, Curves.easeInQuad, Curves.easeOutQuad, Curves.easeInOutQuad, Curves.easeInQuart, Curves.easeOutQuart, Curves.easeInOutQuart, Curves.easeInQuint, Curves.easeOutQuint, Curves.easeInOutQuint, Curves.easeInSine, Curves.easeOutSine, Curves.easeInOutSine, Curves.easeInCirc, Curves.easeOutCirc, Curves.easeInOutCirc, Curves.easeInBack, Curves.easeOutBack, Curves.easeInOutBack, Curves.easeInElastic, Curves.easeOutElastic, Curves.easeInOutElastic, Curves.easeInBounce, Curves.easeOutBounce, Curves.easeInOutBounce
    );
  }
}