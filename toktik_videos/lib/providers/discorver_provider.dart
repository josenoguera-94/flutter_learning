import 'package:flutter/material.dart';
import 'package:toktik_videos/entities/video_post.dart';
import 'package:toktik_videos/models/local_video_model.dart';
import 'package:toktik_videos/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {

  // TODO: Repository, DataSource.

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {

    // await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map( // map regresa un iterable, se debe convertir a lista
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    // otra forma de hacerlo

    // final List<VideoPost> newVideos = videoPosts.map(
    // (video) => VideoPost(
    //   name: video['name'] ?? 'No name',
    //   videoUrl: video['videoUrl'],
    //   likes: video['likes'] ?? 0,
    //   views: video['views'] ?? 0,
    // )
    // ).toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}