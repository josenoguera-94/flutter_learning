import '../entities/video_post.dart';


abstract class VideoPostDataSource {

  Future<List<VideoPost>> getVideoPostsByPage(int page);

  Future<List<VideoPost>> getFavoriteVideoByUser(String userID);

}