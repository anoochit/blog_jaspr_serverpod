import 'package:serverpod/serverpod.dart';

import '../generated/post.dart';

class PostService {
  // get posts
  Future<List<Post>> getPosts(Session session) async {
    return await Post.db.find(session);
  }

  // get post by id
  Future<Post?> getPostById(Session session, int id) async {
    return await Post.db.findById(session, id);
  }
}
