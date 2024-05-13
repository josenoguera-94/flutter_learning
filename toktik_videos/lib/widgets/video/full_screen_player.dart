import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart'; // importM


class FullScreenPlayer extends StatefulWidget {

  final String videoUrl;
  final String caption;

  const FullScreenPlayer({
    super.key,
    required this.videoUrl,
    required this.caption
    });

  @override
  State<FullScreenPlayer> createState() => _FullScreenPlayerState();
}

class _FullScreenPlayerState extends State<FullScreenPlayer> {

  late VideoPlayerController controller;
  // late es un modificador que se utiliza para declarar una variable que se inicializará más tarde

  @override
  void initState(){
    super.initState();
    controller = VideoPlayerController.asset(widget.videoUrl)
      ..setVolume(0)
      ..setLooping(true)
      ..play();

      // es lo mismo que decir:
      // controller = VideoPlayerController.asset(widget.videoUrl);
      // controller.setVolume(0);
      // controller.setLooping(true);
      // controller.play();
  }

  @override
  void dispose() { // dispose es un método que se llama cuando el widget se elimina del árbol de widgets, sirve para liberar recursos
    
    controller.dispose();
    
    super.dispose();
  }


  @override
  Widget build(BuildContext context){

    // widget.videoUrl;  widget. para acceder a las propiedades del widget
    return FutureBuilder(
      future: controller.initialize(), 
      builder: (context, snapshot) { // snapshot es el estado del future

        return const Center(
          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.blueAccent),
        );

      }
    );
  }
}