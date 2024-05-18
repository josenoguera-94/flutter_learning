import 'package:flutter/material.dart';
import 'package:toktik_videos/domain/entities/video_post.dart';
import 'package:toktik_videos/domain/repositories/video_post_repository.dart';
// import 'package:toktik_videos/infraestructure/models/local_video_model.dart';
// import 'package:toktik_videos/shared/data/local_video_posts.dart';

// los providers son clases que se encargan de manejar el estado de la aplicacion
// se encargan de notificar a los widgets que estan escuchando cuando el estado cambia
// se encargan de manejar la logica de negocio de la aplicacion, la data y la logica de presentacion

class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videoPostRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videoPostRepository
  });

  Future<void> loadNextPage() async {

    // await Future.delayed(const Duration(seconds: 2));

    // primera forma
    // final List<VideoPost> newVideos = videoPosts.map( // map regresa un iterable, se debe convertir a lista
    //   (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    // ).toList();

    // otra forma de hacerlo

    // final List<VideoPost> newVideos = videoPosts.map(
    // (video) => VideoPost(
    //   name: video['name'] ?? 'No name',
    //   videoUrl: video['videoUrl'],
    //   likes: video['likes'] ?? 0,
    //   views: video['views'] ?? 0,
    // )
    // ).toList();


    final newVideos = await videoPostRepository.getVideoPostsByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}