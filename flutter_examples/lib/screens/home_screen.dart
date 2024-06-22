import 'package:flutter/material.dart';
import 'package:flutter_examples/screens/screens.dart';

  List<Map<String, dynamic>> views = [
    {
      'title': 'Bloc',
      'widget': const BlocScreen()
    } 
  ];

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Flutter demos'),
      ),
      body: ListView(
        children: [
          for (var view in views)
            ListTile(
              title: Text(view['title']),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => view['widget']
                  )
                );
              },
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            )
        ],
      ),
    );
  }
}