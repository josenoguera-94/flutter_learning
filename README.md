# **Flutter Projects**

This repository contains the projects developed in the courses and personal projects to learn.

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [online documentation](https://docs.flutter.dev/)
- [icons](https://fonts.google.com/icons?selected=Material+Icons)
- [Yes/No Gifs](https://yesno.wtf/)
- [Fig Manual commands](https://fig.io/manual/flutter)
- [quicktype](https://quicktype.io/) - Generate Dart code from JSON


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

## Packages

- `flutter_dotenv: ^5.1.0`: A Flutter plugin to use .env files
- `change_app_package_name: ^1.1.0`: A Flutter plugin to change the package name of Android and iOS apps
- `flutter_launcher_icons: ^0.13.1`: A Flutter plugin to generate adaptive icons for both iOS and Android
- `animate_do: ^3.3.4`: A Flutter package to create beautiful animations
- `intl: ^0.19.0`: A Flutter package to internationalize your app

## Permisos
path:`´<project root>/android/app/src/main/AndroidManifest.xml`, pueden ir antes o despues de `<application>...</application>`

```xml
<uses-permission android:name="android.permission.INTERNET"/>
```