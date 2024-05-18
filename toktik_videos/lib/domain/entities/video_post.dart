
class VideoPost {

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  VideoPost({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });
}