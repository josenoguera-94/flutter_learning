import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

// StateNotifierProvider es un provider que permite manejar el estado de un objeto
// StateNotifierProvider<Clase_que_controlara_el_estado, Estado(objeto o int o....)>
// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
  // se puede pasar el ref en el ThemeNotifier para acceder a otros providers
);

// StateNotifier es una clase que permite manejar el estado de un objeto
// Controller o Notifier, va a controla el stado
class ThemeNotifier extends StateNotifier<AppTheme> {
  
  // ThemeNotifier(super.state);

  // STATE = Estado = new AppTheme();
  ThemeNotifier(): super( AppTheme() );
  // crea la instancia con su valores por defecto
  // se puede mandar infomacion en el momento de crear la
  // instancia del objeto // AppTheme( selectedColor: 2, isDarkmode: true )


  void toggleDarkmode() {
    state = state.copyWith( isDarkmode: !state.isDarkmode  );
    // state contiene todos los valores y métodos del objeto AppTheme
  }

  void changeColorIndex( int colorIndex) {
    state = state.copyWith( selectedColor: colorIndex );
  }


}
