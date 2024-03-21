import 'package:flutter/material.dart';
import 'package:yes_no_app/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  
  final Message message;

  const MyMessageBubble({
    super.key,
    required this.message,
  });



  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; // para que busque el tema del contexto actual

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          // width: 150,
          // height: 50,
          decoration: BoxDecoration(
            color: colors.primary,
            // borderRadius: BorderRadius.circular(20) // BorderRadius.circular() crea un borde redondeado
            // opciones de BorderRadius: BorderRadius.all(), BorderRadius.only(), BorderRadius.vertical(), BorderRadius.horizontal()....
            borderRadius: const BorderRadius.only(

                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(message.text, style: const TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5)
      ] 
    );
    
  }
}
