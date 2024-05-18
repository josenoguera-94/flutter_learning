

import 'package:toktik_videos/domain/datasource/video_post_datasource.dart';
import 'package:toktik_videos/domain/entities/video_post.dart';
import 'package:toktik_videos/infraestructure/models/local_video_model.dart';
import 'package:toktik_videos/shared/data/local_video_posts.dart';


// se puede implementar o heredar de la clase abstracta VideoPostDataSource
// la diferencia entre implementar y heredar es...
class LocalVideoDatasource implements VideoPostDataSource {  
  

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoPostsByPage(int page) async {

    // await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map( // map regresa un iterable, se debe convertir a lista
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    return newVideos;
  }
}
