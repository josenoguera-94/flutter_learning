import 'package:flutter/material.dart';
import 'package:flutter_examples/screens/screens.dart';

class Routes {
  static const home = '/';
  static const bloc = '/bloc';
}

enum NavigationRoutes {
  home,
}

final Map<String, WidgetBuilder> router = {
  Routes.home: (context) => const HomeScreen(),
  Routes.bloc: (context) => const BlocScreen(),
};

