

import 'package:flutter/material.dart';
import 'package:toktik_videos/entities/video_post.dart';


class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  // const VideoScrollableView({Key? key, required this.videos}) : super(key: key);
  const VideoScrollableView(
    {
      super.key, 
      required this.videos
    }
  );

  @override
  Widget build(BuildContext context){
    return PageView( // PageView es un widget que permite desplazarse entre diferentes páginas de contenido
      scrollDirection: Axis.vertical, // Axis.vertical es un tipo de Axis que indica que el scroll se hará de forma vertical
      // scrollBehavior: const MaterialScrollBehavior(), // MaterialScrollBehavior es un tipo de ScrollBehavior que se utiliza para personalizar el comportamiento de desplazamiento de un ScrollView
      physics: const BouncingScrollPhysics(), // BouncingScrollPhysics es un tipo de ScrollPhysics que simula el efecto de rebote en los extremos de un ScrollView
      children: [
        Container(color: Colors.red,),
        Container(color: Colors.green,),
        Container(color: Colors.blue,),
      ]
    );
  }
}