import 'package:flutter/material.dart';
import 'package:toktik_videos/entities/video_post.dart';


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
        _CustomIconButton(value: video.views, iconColor: Colors.white, iconData: Icons.remove_red_eye_outlined),
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
      Text('$value'),
      ]
    );
  }
}