

import 'package:flutter/material.dart';
import 'package:toktik_videos/domain/entities/video_post.dart';
import 'package:toktik_videos/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik_videos/presentation/widgets/video/full_screen_player.dart';


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
    // return PageView( // PageView es un widget que permite desplazarse entre diferentes páginas de contenido
    //   scrollDirection: Axis.vertical, // Axis.vertical es un tipo de Axis que indica que el scroll se hará de forma vertical
    //   // scrollBehavior: const MaterialScrollBehavior(), // MaterialScrollBehavior es un tipo de ScrollBehavior que se utiliza para personalizar el comportamiento de desplazamiento de un ScrollView
    //   physics: const BouncingScrollPhysics(), // BouncingScrollPhysics es un tipo de ScrollPhysics que simula el efecto de rebote en los extremos de un ScrollView
    //   children: [
    //     Container(color: Colors.red,),
    //     Container(color: Colors.green,),
    //     Container(color: Colors.blue,),
    //   ]
    // );

    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack( // Stack permite apilar varios widgets uno encima del otro
          children: [
            // video player + gradiente

            SizedBox.expand(
              // width: double.infinity,
              // height: double.infinity,
              child: FullScreenPlayer(
                videoUrl: videoPost.videoUrl,
                caption: videoPost.name,
              ),
            ),

            // botones
            Positioned( // Positioned es un widget que permite posicionar un widget en un Stack
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
            ),
          ],
        );
      }
    );
  }
}