import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class PostService {
  // get posts
  static Future<List<Post>> getPosts(Session session) async {
    return await Post.db.find(session);
  }

  // get post by id
  static Future<Post?> getPostById(Session session, int id) async {
    return await Post.db.findById(session, id);
  }
}
