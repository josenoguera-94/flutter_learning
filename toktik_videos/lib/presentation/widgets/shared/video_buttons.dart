import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik_videos/domain/entities/video_post.dart';
import 'package:toktik_videos/helpers/formats.dart';


class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({
    super.key,
    required this.video
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, iconColor: Colors.red, iconData: Icons.favorite),
        const SizedBox(height: 20,),
        _CustomIconButton(value: video.views, iconColor: Colors.white, iconData: Icons.remove_red_eye_outlined),
        const SizedBox(height: 20,),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 2),
          child: const _CustomIconButton(value: 0, iconData: Icons.play_circle_outline),
        ), // SpinPerfect es un widget que permite aplicar una animación de rotación a un widget
        // _CustomIconButton(value: video.comments, iconColor: Colors.white, iconData: Icons.comment),
      ]
    );
  }    
}


class _CustomIconButton extends StatelessWidget {
  
  final int value;
  final IconData iconData;
  final Color iconColor;

  const _CustomIconButton({
    // super.key, cuando widget es privado no se necesita super.key
    required this.iconData,
    iconColor, 
    required this.value,
  }): iconColor = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, color: iconColor, size: 30), // Icons.favorite_border
       ),
       if (value != 0) Text(Formats.numberFormat(value.toDouble())), // '${}'
      ]
    );
  }
}