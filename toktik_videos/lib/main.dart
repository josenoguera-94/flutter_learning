import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_videos/config/theme/app_theme.dart';
import 'package:toktik_videos/providers/discorver_provider.dart';
import 'package:toktik_videos/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // ChangeNotifierProvider trabaja de forma peresosa (lazy), solo se crea cuando se necesita
          // se puede colocar de forma no peresosa con lazy: false
          lazy: false, // con esto se crea la instancia apenas se lanza el constructor
          create: (_) => DiscoverProvider()..loadNextPage()
        )

        //.. es un operador de cascada, que permite llamar a un método en un objeto (o varios métodos) y devolver el objeto en lugar de void
      ],
      child:MaterialApp(
      title: 'TokTik',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const DiscoverScreen(),
    )
    );
  }
}
