import '../entities/video_post.dart';


abstract class VideoPostRepository {

  Future<List<VideoPost>> getVideoPostsByPage(int page);
  
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID);

}