import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart'; // importamos todos los screens

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/', // sirve para indicar la ruta inicial
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),

    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (context, state) => const UiControlsScreen(),
    ),

    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),

    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),

    GoRoute(
      path: '/counter-river',
      name: CounterScreen.name,
      builder: (context, state) => const CounterScreen(),
    ),

    GoRoute(
      path: '/theme-changer',
      name: ThemeChangerScreen.name,
      builder: (context, state) => const ThemeChangerScreen(),
    ),

    // Ejemplo de ruta con parámetros
    // GoRoute(
    //   path: '/detail/:id',
    //   name: DetailScreen.name,
    //   builder: (context, state) => DetailScreen(id: state.params['id']!),
    // ),

    // Ejemplo de ruta con parámetros opcionales
    // GoRoute(
    //   path: '/detail/:id?',
    //   name: DetailScreen.name,
    //   builder: (context, state) => DetailScreen(id: state.params['id']),
    // ),

    // Varios parámetros
    // GoRoute(
    //   path: '/detail/:id/:name',
    //   name: DetailScreen.name,
    //   builder: (context, state) => DetailScreen(id: state.params['id']!, name: state.params['name']!),
    // ),
  ],
);
