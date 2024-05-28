# **Flutter Projects**

This repository contains the projects developed in the courses and personal projects to learn.

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [online documentation](https://docs.flutter.dev/)
- [icons](https://fonts.google.com/icons?selected=Material+Icons)
- [Yes/No Gifs](https://yesno.wtf/)
- [Fig Manual commands](https://fig.io/manual/flutter)
- [quicktype](https://quicktype.io/) - Generate Dart code from JSON
- [fluttertpoint](https://www.fluttertpoint.in/)
- [flutter_form_builder](https://github.com/flutter-form-builder-ecosystem/flutter_form_builder?tab=readme-ov-file#basic-use)


## **Commands**
- `flutter create --org com.example <project_name>`: Create a new Flutter projects
- `flutter create <project_name>`: Create a new Flutter projects
- `flutter run`: Run the project, you need to be in the project folder
- `flutter run <file_name>`: Run the project
- `flutter run -d <device_name>`: Run the project in a specific device
- `flutter devices`: List all the devices connected
- `flutter doctor`: Check the status of the Flutter installation
- `flutter emulators`: List all the emulators
- `flutter emulators --launch <emulator_name>`: Launch an emulator
- `flutter emulators --create <emulator_name>`: Create a new emulator



## **3 Pasos para crear una aplicación en Flutter**

1. Construcción de la lógica de negocio
2. La conexión de la lógica de negocio con nuestros widgets
3. Creación y diseño de la aplicación


## **GESTOR DE ESTADOS**

podemos llamar la carpeta segun el gestor de estados que vamos a utilizar. Ejemplo `provider`, `riverpod`, `bloc`, `getx`.

- **SetState**: Es una librería que nos permite manejar el estado de nuestra aplicación de una manera sencilla y eficiente.
- **Provider**: Es una librería que nos permite manejar el estado de nuestra aplicación de una manera sencilla y eficiente.
- **Riverpod**: Es una librería que nos permite manejar el estado de nuestra aplicación de una manera sencilla y eficiente.
- **Bloc**: Es una librería que nos permite manejar el estado de nuestra aplicación de una manera sencilla y eficiente.
- **GetX**: Es una librería que nos permite manejar el estado de nuestra aplicación de una manera sencilla y eficiente.

### **Provider**

- `context.watch<ProviderType>()`: Nos permite escuchar los cambios de un provider y redibujar el widget cuando el valor cambie.
- `context.read<ProviderType>()`: Nos permite leer el valor de un provider pero no escuchar los cambios.
- `context.select<ProviderType, Type>((value) => value.property)`: Nos permite leer un valor específico de un provider. por ejemplo, para la app de chat si los mensajes cambian pero los demás providers no.


### Riverpod

- [riverpod](https://riverpod.dev/)
- [riverpod v2](https://docs-v2.riverpod.dev/)
- [code_generation](https://docs-v2.riverpod.dev/docs/concepts/about_code_generation)

Riverpord es una librería que nos permite manejar el estado de nuestra aplicación de una manera sencilla y eficiente. A diferencia de Provider, **no depende del contexto**.

- si estámos dentro de métodos se utiliza el read
- si estamos dentro de un widget se utiliza el watch

**Pros:**
- Es la forma recomendada por Riverpod
- Sintaxis mucho más simple
- Determina automáticamente el provider acorde a la necesidad

**Cons:**
- Hay que mantener un watch o ejecutar el generador en cada cambio que hagamos en los providers
- flutter pub run build_runner watch
- Un paquete adicional de riverpod_generator como dependencia de desarrollo (que realmente no es gran problema)

**Tipos:**

- **Provider**: Es un provider que no depende de ningún otro provider.
- **ChangeNotifierProvider**: Es un provider que depende de un ChangeNotifier.
- **StateNotifierProvider**: Es un provider que depende de un StateNotifier.
- **FutureProvider**: Es un provider que depende de un Future.
- **StreamProvider**: Es un provider que depende de un Stream.
- **StateProvider**: Es un provider que depende de un valor inmutable.
- **ScopedProvider**: Es un provider que depende de un valor que se encuentra en un contexto superior.
- **(Async)NotifierProvider**: 

### **Bloc**

## Como cambiar Bundle Id

1. Instalar paquete [change_app_package_name](https://pub.dev/packages/change_app_package_name)
2. Add Change App Package Name to your `pubspec.yaml` in `dev_dependencies:` section.
    ```yaml
    dev_dependencies: 
        change_app_package_name: ^1.1.0
    ```
    if  Not migrated to null safety yet? use old version like this
    ```yaml
    dev_dependencies: 
        change_app_package_name: ^0.1.3
    ```
3. `flutter pub get` to install the package.
4. `flutter pub run change_app_package_name:main com.new.package.name` to change the package name. suggestion: `com.<yourname>.<appname>` es importante el nombre

## Android

- [flutter - android](https://docs.flutter.dev/deployment/android)


## Utils

- [themoviedb](https://www.themoviedb.org/)
- [Create images](https://www.bing.com/images/create)
- [Material](https://m3.material.io/develop/flutter)
- [demos](https://flutter.github.io/samples/web/material_3_demo/)
- [picsum.photos](https://picsum.photos/)
- [Material components](https://m2.material.io/components/lists/flutter#three-line-list)

## Packages

- `flutter_dotenv: ^5.1.0`: A Flutter plugin to use .env files
- `change_app_package_name: ^1.1.0`: A Flutter plugin to change the package name of Android and iOS apps
- `flutter_launcher_icons: ^0.13.1`: A Flutter plugin to generate adaptive icons for both iOS and Android
- `animate_do: ^3.3.4`: A Flutter package to create beautiful animations
- `intl: ^0.19.0`: A Flutter package to internationalize your app
- `go_router: ^14.1.2`: A Flutter package to manage routes [navigation](https://docs.flutter.dev/ui/navigation)
- `flutter_riverpod: ^2.2.0`: A Flutter package to manage the state of your app
- `card_swiper: ^3.0.1`: [link](https://pub.dev/packages/card_swiper)A Flutter package to create a Tinder-like card swiper

## Permisos
- [permisos](https://developer.android.com/reference/android/Manifest.permission)
path:`´<project root>/android/app/src/main/AndroidManifest.xml`, pueden ir antes o despues de `<application>...</application>`

```xml
<uses-permission android:name="android.permission.INTERNET"/> <!-- Para acceder a internet -->
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" /> <!-- Para acceder al estado de la red -->
```

## Flujo de arquitecura limpia

1. UI: Interfaz de usuario
2. Presentación: Lógica de presentación: provider, riverpod, bloc, getx
3. Casos de uso: Lógica de negocio
4. Repositorio: Conexión con la base de datos
5. Información regresa al UI

## Flujo para consumir datos

- **datasource:** fuente de datos
- **repository:** consume el datsource
- **http:** cuando se hace la peticion
- **model:** captura los datos y los transforma en un objeto, se hacen validaciones para que no reviente si falta algún dato
- **mapper:** toma el objeto del model y lo transforma en una entidad, se filtran los campos necesarios y se ahcen pequeñas validaciones de forma
- **entidad:** es el objeto final con la data ya limpita y lista para consumir

## Flujo para crear los archivos que consumen dato

1. Entities
2. Datasources (Abstract)
3. Repositories (Abstract)
4. Model (se importa de quicktype)
5. Mapper
6. Datasources (Implementation)
7. Repositories (Implementation)
8. Providers o gestor de estados
9. UI
## Notas

- Stateful Widget: Es un widget que puede cambiar su estado durante la ejecución de la aplicación. Tiene un ciclo de vida que se compone de tres métodos: `initState`, `build` y `dispose`.
- Stateless Widget: Es un widget que no puede cambiar su estado durante la ejecución de la aplicación. Su contenido no puede variar. No tiene un ciclo de vida.
- La palabra Builder significa que se va a contruir en tiempo de ejecución.
- deeplinking: Es una técnica que permite a una aplicación móvil ser invocada por otra aplicación, o por un enlace web.
- splash screen: Es una pantalla que se muestra al inicio de la aplicación mientras se cargan los recursos necesarios para que la aplicación funcione.
- stack vs column: Stack es un widget que permite apilar widgets uno encima de otro. Column es un widget que permite apilar widgets uno debajo de otro.
- el notch es la muesca que tienen algunos dispositivos en la parte superior de la pantalla. hay que tener en cuenta para que no se superponga con el contenido de la aplicación.

## **Widgets**

- `AnimatedContainer`: Es un widget que permite animar la transición de un contenedor de un estado a otro.
- `AppBar`: Es un widget que permite crear una barra de navegación en la parte superior de la aplicación.
- `BottomNavigationBar`: Es un widget que permite crear una barra de navegación en la parte inferior de la aplicación. [tutorial](https://www.youtube.com/watch?v=HB5WMcxAmQQ)
- `Card`: Es un widget que permite crear una tarjeta con una sombra y bordes redondeados.
- `FloatingActionButton`: Es un widget que permite crear un botón flotante en la parte inferior derecha de la aplicación.
- `GridView`: Es un widget que permite crear una cuadrícula de elementos.
- `BottomAppBar`: Es un widget que permite crear una barra de navegación en la parte inferior de la aplicación.
- `Transform.scale`: Es un widget que permite escalar un widget.
- `Chip`: Es un widget que permite mostrar información en forma de etiquetas
- `Wrap`: Es un widget que permite que los hijos se acomoden en varias líneas
- `SizeBox`: Es un widget que permite establecer un tamaño fijo
  - `SizedBox.expand`: Es un widget que permite expandir un widget al tamaño del padre
- `ClipRRect`: Es un widget que permite recortar los bordes de un widget
- `ClipOval`: Es un widget que permite recortar un widget en forma de círculo
- `ClipPath`: Es un widget que permite recortar un widget en una forma personalizada
- `CustomPaint`: Es un widget que permite dibujar formas personalizadas
- `Dismissible`: Es un widget que permite deslizar un widget para eliminarlo
- `Draggable`: Es un widget que permite arrastrar un widget
- `DragTarget`: Es un widget que permite recibir un widget arrastrado
- `AnimatedBuilder`: Es un widget que permite animar un widget
- `AnimatedList`: Es un widget que permite animar una lista
- `AnimatedOpacity`: Es un widget que permite animar la opacidad de un widget
- `AnimatedPositioned`: Es un widget que permite animar la posición de un widget
- `EdgeInsets`: Es una clase que permite establecer márgenes en un widget
- `RoundedRectangleBorder`: Es una clase que permite establecer bordes redondeados en un widget
- `BoxFit`: Es una clase que permite establecer cómo se ajusta una imagen dentro de un contenedor. `BoxFit.fill`, `BoxFit.cover`, `BoxFit.contain`, `BoxFit.fitWidth`, `BoxFit.fitHeight`, `BoxFit.none`, `BoxFit.scaleDown`
- `ListView`: Es un widget que permite crear una lista de elementos
- `ListView.builder`: Es un widget que permite crear una lista de elementos de manera eficiente
- `TextOverflow`: Es una clase que permite establecer cómo se comporta un texto cuando no cabe en un contenedor. `TextOverflow.clip`, `TextOverflow.ellipsis`, `TextOverflow.fade`, `TextOverflow.visible`
- `FadeInImage`: Es un widget que permite mostrar una imagen con un efecto de fade
- `FadeIn`: Es un widget que permite animar la entrada de un widget
- `FadeInRight`: Es un widget que permite animar la entrada de un widget desde la derecha

## Null Safety

- `?`: Operador de nulabilidad que permite que una variable pueda ser nula.
- `??`: Operador de nulabilidad que permite asignar un valor por defecto si la variable es nula.
- `!`: Operador de nulabilidad que permite asegurar que una variable no es nula.

**Ejemplos**
  
```dart
// ?
String? name;
name = null;
print(name); // null
```

```dart
// ??

String name;
String name2 = name ?? 'No name';
print(name2); // No name
```

```dart
// !
String name;
name = null;
print(name!); // Error
```



Links:

[textform](https://www.fluttertpoint.in/textformfield-flutter)

ListTile(title: Row(children: [ Expanded(main), Text('trailing') ]));


Text(
  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
  style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      background: Paint()
        ..strokeWidth = 30.0
        ..color = Colors.grey
        ..style = PaintingStyle.stroke
        ..strokeJoin = StrokeJoin.round),
)

https://stackoverflow.com/questions/72561344/move-button-to-the-bottom
Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.all(5),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
                'Bottom Button '), // trying to move to the bottom
          ),
        ),
      ),
    ),