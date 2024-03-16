import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; // para que busque el tema del contexto actual

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(

          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: const BorderRadius.only(

              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),

          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text('Fugiat anim ea amet aliqua qui esse veniam', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10)
      ] 
    );
    
  }
}


class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    // MediaQuery es un widget que proporciona información sobre el tamaño y la orientación de la pantalla
    // context es el árbol de widgets y size es el tamaño de la pantalla

    // return const Placeholder(); // Placeholder es un widget que muestra un rectángulo gris con una cruz blanca en el centro
    return ClipRRect( // ClipRRect es un widget que recorta su widget hijo en un rectángulo redondeado
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://yesno.wtf/assets/yes/2-5df1b403f2654fa77559af1bf2332d7a.gif',
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover, // BoxFit.cover es una opción de fit que hace que la imagen cubra el espacio asignado
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;

            return Container(
              width: size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: Colors.grey[300],
              child: const Center(child: CircularProgressIndicator()),
              
            );

            // return const Center(child: CircularProgressIndicator());

            // para mostrar un indicador de progreso mientras se carga la imagen
            // return Center(
            //   child: CircularProgressIndicator(
            //   value: loadingProgress.expectedTotalBytes != null
            //     ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
            //     : null,
            //   ),
            // );

            

          },
          // loadingBuilder (contex, child, loadingProgress)
          // - => se le puede pasar un widget personalizado para mostrar mientras se carga la imagen
          // - {} permite definir un cuerpo
          )
      );
  }
}
