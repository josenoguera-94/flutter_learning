import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';
// import 'dart:io' show Platform;
// import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';



class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';
  // static sirve para acceder a la propiedad sin necesidad de instanciar la clase

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>(); 
    // GlobalKey es una clave única para identificar un widget
    // GlobalKey<ScaffoldState> es una clave única para identificar un ScaffoldState
    // scaffoldKey tiene el estado de un Scaffold, es decir, se puede acceder a las propiedades de Scaffold
    // si tiene drawer, endDrawer, scaffoldKey.currentState?.openDrawer(), scaffoldKey.currentState?.closeDrawer()...
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
      drawer: SideMenu( scaffoldKey: scaffoldKey ) // drawer es un widget que permite crear un menú lateral, endDrawer es para el menú derecho
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {


    return ListView.builder( // ListView.builder para que se renderize solo lo que se ve en tiempo de ejecución
      // physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    
    return ListTile( // ListTile para crear una lista de elementos
      leading: Icon( menuItem.icon, color: colors.primary ),
      trailing: Icon( Icons.arrow_forward_ios_rounded, color:colors.primary ),
      title: Text(menuItem.title),
      subtitle: Text( menuItem.subTitle ),
      onTap: () {
        
        // para navegar a otra pantalla
        // existe también .pushNamed para navegar a una pantalla por su nombre
        // .replace para reemplazar la pantalla actual
        // .pop para regresar a la pantalla anterior

        // Navigator.of(context).push( 
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );
        // Navigator.pushNamed(context, menuItem.link );

        // context.pushNamed( CardsScreen.name ); // sirve para navegar a una pantalla por su nombre
        // context.go( CardsScreen.name ); // sirve para navegar a una pantalla por su nombre
        context.push( menuItem.link );
      },
    );
  }
}

