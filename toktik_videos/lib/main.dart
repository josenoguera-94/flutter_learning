import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_videos/config/theme/app_theme.dart';
import 'package:toktik_videos/providers/discorver_provider.dart';
import 'package:toktik_videos/screens/discover/discover_screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiscoverProvider())
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
