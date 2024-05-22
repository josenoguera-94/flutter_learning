import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';


class CounterScreen extends ConsumerWidget { 
  // ConsumerWidget es un widget que permite consumir un provider
  // consumer se podría utilizar en cualquier widget
  // funciona igual al StateLessWidget pero con la diferencia que puede consumir un provider
  // se tiene que agregar el provider en el método build()  Widget build(BuildContext context, WidgetRef ref)
  // a través de ref.watch() nota: se recomienda no utilizar .watch en métodos que se ejecutan muchas veces,
  // se recomienda utilizar .read() en estos casos
  //ref.read() es un método que permite leer un provider  y no se renderiza el widget
  // cada vez que el provider cambie, el widget se renderizará de nuevo

  static const name = 'counter_screen';


  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch( counterProvider ); // ref.watch() es un método que permite escuchar un provider
    final bool isDarkmode = ref.watch( isDarkmodeProvider ); 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            icon: Icon( isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined ),
            onPressed: () {
              // ref.read( isDarkmodeProvider ) asi apunta a su valor
              ref.read( isDarkmodeProvider.notifier )
                .update((state) => !state );
                //.addListerner((state) {...}) // para escuchar los cambios
                //.dispose() // para dejar de escuchar los cambios
                //.toString() // para convertir a string
                //.updateShouldNotify((oldState, newState) => true) // para actualizar el estado
                //.noSuchMethod(Invocation invocation) // para manejar errores
            }, 
          )
        ],
      ),

      body: Center(
        child: Text('Valor: $clickCounter', style: Theme.of(context).textTheme.titleLarge ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add ),
        onPressed: (){

          // forma 1
          // ref.read(counterProvider.notifier)
          //   .update((state) => state + 1);

          // forma 2
          ref.read( counterProvider.notifier ).state++;

        },
      ),
      
    );
  }
}


