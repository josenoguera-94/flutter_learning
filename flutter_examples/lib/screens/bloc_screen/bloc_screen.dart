import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_examples/helpers/random_generator.dart';
import 'package:flutter_examples/screens/bloc_screen/counter_bloc/counter_bloc.dart';
import 'package:flutter_examples/screens/bloc_screen/name_bloc/name_bloc.dart';


class BlocScreen extends StatelessWidget {

  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Screen'),
      ),
      // body: BlocProvider(
      //   create: (context) => CounterBloc(),
      //   child: const Layout(),
      // ),

      body: MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
          BlocProvider<NameBloc>(create: (context) => NameBloc()),
        ],
        child: const Layout(),
      ),
    );
  }
}


class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {

    final counterBloc = context.watch<CounterBloc>();
    final nameBloc = context.watch<NameBloc>();

    debugPrint('CHANGED');

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Nombre: ${nameBloc.state.name}',
          ),
          const SizedBox(height: 20),
          CustomButton(
            backgroundColor: Colors.cyan.shade200, 
            icon: Icons.remember_me, 
            onPressed: () {
              nameBloc.changeName(RandomGenerator.getRandomName());
            }
          ),
          const SizedBox(height: 20),
          Text(
            'Número de clicks: ${counterBloc.state.counter}',
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CustomButton(
                  onPressed: () {
                    // counterBloc.add(Increment());
                    counterBloc.increment();
                  },
                  icon: Icons.add,
                  backgroundColor: Colors.blue,
                ),
              ),
              const SizedBox(width: 10),
              CustomButton(
                backgroundColor: Colors.green,
                onPressed: () {
                  // counterBloc.add(Reset());
                  counterBloc.reset();
                },
                icon: Icons.refresh,
              ),
              const SizedBox(width: 10),
              CustomButton(
                backgroundColor: Colors.red,
                icon: Icons.remove,
                onPressed: () {
                  // counterBloc.add(Decrement());
                  counterBloc.decrement();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}


class CustomButton extends StatelessWidget {

  final Color backgroundColor;
  final IconData icon;
  final void Function()? onPressed;

  const CustomButton({
    super.key, 
    required this.backgroundColor, 
    required this.icon, 
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: onPressed,
          // Navigator.pushNamed(context, '/bloc_screen');
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}