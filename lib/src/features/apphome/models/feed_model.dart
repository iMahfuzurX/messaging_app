
class FeedModel {
  final String id;
  final String uid;
  final String username;
  final String content;
  final String time;
  final String? imageUrl;

  FeedModel(this.id, this.uid, this.content, this.time, this.imageUrl, this.username);
}