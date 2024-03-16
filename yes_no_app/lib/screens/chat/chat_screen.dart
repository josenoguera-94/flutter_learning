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
        title: const Text('Chat'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Chat Screen'),
      ),
    );
  }
}
