import 'package:flutter/material.dart';


class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController(); // TextEditingController es un controlador de texto que permite controlar el texto de un campo de texto
    final FocusNode focusNode = FocusNode(); // FocusNode es un nodo de foco que permite controlar el foco de un widget
    final colors = Theme.of(context).colorScheme; // Theme.of(context) retorna el tema actual del contexto
          
    final outlineInputBorder = UnderlineInputBorder( // otra opcion OutlineInputBorder, borderSide: BorderSide(color: colors.primary), // BorderSide es un widget que permite personalizar los bordes de un widget BorderSide.none, colors.primary.withOpacity(0.5)
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(20)
    );

    final inputDecoration = InputDecoration(
        hintText: 'Escribe un mensaje',
        filled: true,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(5),
        // ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.text; // .text o .value.text
            print('enviar mensaje $textValue');
            textController.clear();
          },
        ),
      );
    
    
    return TextFormField( // TextFormField es un widget que permite al usuario ingresar texto
      onTapOutside: (event) { focusNode.unfocus(); }, // onTapOutside es una propiedad que permite personalizar la acción al hacer tap fuera del campo de texto
      // recibe una funcion (){} o un widget => Widget()
      // keyboardAppearance: colors.brightness, // keyboardAppearance es una propiedad que permite personalizar la apariencia del teclado
      // keyboardType: TextInputType.text, // keyboardType es una propiedad que permite personalizar el tipo de teclado, opciones: text, number, emailAddress, datetime, phone, multiline, visiblePassword, name, streetAddress, postalCode, emailAddress, url, visiblePassword, name, streetAddress, postalCode, emailAddress, url
      // textInputAction: TextInputAction.send, // textInputAction es una propiedad que permite personalizar la acción del teclado
      focusNode: focusNode,
      controller: textController, // controller es una propiedad que recibe un TextEditingController
      decoration: inputDecoration,
      onFieldSubmitted: (value) { // onFieldSubmitted es una función que recibe el valor del campo de texto cuando se envía
        print('submitted: $value');
        textController.clear(); // clear() es un método que permite limpiar el texto del campo de texto
        // focusNode.unfocus(); // unfocus() es un método que permite quitar el foco de un widget
        focusNode.requestFocus(); // requestFocus() es un método que permite solicitar el foco de un widget
        // FocusScope.of(context).unfocus(); // FocusScope.of(context) retorna el foco actual del contexto
      },
      // onChanged: (value) { // onChanged es una función que recibe el valor del campo de texto cuando cambia
      //   print(value);
      // },
    );
  }
}