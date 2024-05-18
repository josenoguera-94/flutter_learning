import 'package:flutter/material.dart';


class VideoBackground extends StatelessWidget { // stless

  final List<Color> colors;
  final List<double> stops;
  
  const VideoBackground({
    super.key,
    this.colors = const[
      Colors.transparent,
      Colors.black87
    ],
    this.stops = const[0.0, 1.0]
    }): assert( 
      colors.length == stops.length, 
      'colors and stops must have the same length'
    );

  @override
  Widget build(BuildContext context) {
    return Positioned.fill( // para que tome todo el espacio disponible
      child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient( // creando un gradiente
          colors: colors,
          stops: stops,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      )
    ));
  }
}