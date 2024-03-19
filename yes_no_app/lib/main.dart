import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme.dart';
import 'package:yes_no_app/screens/chat/chat_screen.dart';
import 'package:yes_no_app/providers/chat_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider( // MultiProvider es un proveedor que permite tener varios proveedores
      // al envolver el MaterialApp con MultiProvider, se puede acceder a los proveedores en cualquier parte de la aplicación
      providers: [
        ChangeNotifierProvider( // ChangeNotifierProvider es un proveedor especializado para ChangeNotifier
          create: (_) => ChatProvider(), //  ahí va el context pero _ es una convención para variables que no se usan
        ),
      ],
      child: MaterialApp(
        title: 'Yes no App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen(),
        //  home: Scaffold(
        //   body: Center(
        //       child: FilledButton.tonal(
        //           onPressed: () {}, child: const Text('Click me'))),
        // ),
      ),
    );
  }
}
