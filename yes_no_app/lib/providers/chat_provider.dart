import 'package:flutter/material.dart';
import 'package:yes_no_app/entities/message.dart';

// provider permite tener el ChangeNotifier
// de manera global o en un contexto más amplio
class ChatProvider extends ChangeNotifier {
  // ChangeNotifier es una clase que proporciona notificaciones a sus oyentes cuando cambia el estado.
  List<Message> message = [
    const Message(text: 'Hola', fromWho: FromWho.me),
    const Message(text: 'Como estás?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(Message message) async {
    // this.message.add(message);
    // notifyListeners();
  }
}