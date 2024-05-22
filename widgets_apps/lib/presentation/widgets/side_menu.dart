import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({
    super.key, 
    required this.scaffoldKey
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    // MediaQuery.of(context).viewPadding.top es la altura del notch en la parte superior del dispositivo
    // print(Plataform.isIOS);
   // print(Plataform.isAndroid);

    return NavigationDrawer( // NavigationDrawer es un widget que permite crear un menú lateral
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {

        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appMenuItems[value];
        context.push( menuItem.link ); 
        // .push() es un método de GoRouter que permite navegar a una ruta
        // .go() es un método de GoRouter que permite navegar a una ruta pero no apila la ruta actual, 
        //es decir, no se puede regresar a la ruta anterior
        widget.scaffoldKey.currentState?.closeDrawer(); // openDrawer(), closeDrawer(), isDrawerOpen 
        // widget hace referencia a la clase padre, en este caso al StatefulWidget del SideMenu
        // y no al State del SideMenu

      },
      children: [

        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: const Text('Main'),
        ),

        ...appMenuItems // ...appMenuItems es un spread operator que permite desglosar una lista
          .sublist(0,3)
          .map((item) => NavigationDrawerDestination(
            icon: Icon( item.icon ), 
            label: Text( item.title ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Text('More options'),
        ),


         ...appMenuItems
          .sublist(3)
          .map((item) => NavigationDrawerDestination(
            icon: Icon( item.icon ), 
            label: Text( item.title ),
          ),
        ),
        

      ]
    );
  }
}