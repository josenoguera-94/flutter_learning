

import 'package:toktik_videos/domain/datasource/video_post_datasource.dart';
import 'package:toktik_videos/domain/entities/video_post.dart';
import 'package:toktik_videos/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  
  final VideoPostDataSource videoPostDataSource;
  // se llama VideoPostDataSource que es la clase abstracta 
  // que se implementa en LocalVideoDatasource para obtener los datos

  VideoPostRepositoryImpl({
    required this.videoPostDataSource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoPostsByPage(int page) {
    return videoPostDataSource.getVideoPostsByPage(page);
  }

}