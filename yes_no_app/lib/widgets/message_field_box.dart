import 'package:flutter/material.dart';


class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; // Theme.of(context) retorna el tema actual del contexto
          
    final outlineInputBorder = UnderlineInputBorder( // otra opcion OutlineInputBorder, borderSide: BorderSide(color: colors.primary), // BorderSide es un widget que permite personalizar los bordes de un widget BorderSide.none, colors.primary.withOpacity(0.5)
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(5)
    );

    final inputDecoration = InputDecoration(
        hintText: 'Escribe un mensaje',
        filled: true,
        enabledBorder: outlineInputBorder,
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(5),
        // ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            print('enviar mensaje');
          },
        ),
      );
    
    
    return TextFormField( // TextFormField es un widget que permite al usuario ingresar texto
      decoration: inputDecoration,
      onFieldSubmitted: (value) { // onFieldSubmitted es una función que recibe el valor del campo de texto cuando se envía
        print('submitted: $value');

        // FocusScope.of(context).unfocus(); // FocusScope.of(context) retorna el foco actual del contexto
      },
      onChanged: (value) { // onChanged es una función que recibe el valor del campo de texto cuando cambia
        print(value);
      },
    );
  }
}