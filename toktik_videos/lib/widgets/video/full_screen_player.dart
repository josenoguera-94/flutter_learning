import 'package:flutter/material.dart'; // importM


class FullScreenPlayer extends StatelessWidget {

  final String videoUrl;
  final String caption;

  const FullScreenPlayer({
    super.key,
    required this.videoUrl,
    required this.caption
    });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: const Text('FullScreenPlayer'),
        ),
      ),
    );
  }
}