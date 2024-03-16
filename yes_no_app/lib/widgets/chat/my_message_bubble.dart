import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

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
            borderRadius: BorderRadius.circular(20) // BorderRadius.circular() crea un borde redondeado
            // opciones de BorderRadius: BorderRadius.all(), BorderRadius.only(), BorderRadius.vertical(), BorderRadius.horizontal()....
            // border20: BorderRadius.only(

                // topLeft: Radius.circular(12),
                // topRight: Radius.circular(12),
                // bottomRight: Radius.circular(12),
            //     ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text('Hola', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10)
      ] 
    );
    
  }
}
