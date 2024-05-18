import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_videos/providers/discorver_provider.dart';
import 'package:toktik_videos/presentation/widgets/shared/video_scrollable_view.dart';


class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch<DiscoverProvider>(); 
    // final discoverProvider = context.read<DiscoverProvider>(); 
    // watch() es un método de extensión de Provider, que se utiliza para escuchar un solo Provider
    
    // final otherProvider = Provider.of<DiscoverProvider>(context); // otra forma
    // final otherProvider = Provider.of<DiscoverProvider>(context, listen: false); // otra forma
    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(child: CircularProgressIndicator( strokeWidth: 2 ))
          : VideoScrollableView(videos: discoverProvider.videos)
    );
  }
}