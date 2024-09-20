import 'package:jaspr/server.dart';
import 'package:jaspr_serverpod/jaspr_serverpod.dart';

import '../../src/services/post_service.dart';
import '../components/page_header.dart';
import '../components/post_item.dart';

class PostPage extends StatelessComponent {
  const PostPage({super.key, required this.id});
  final int id;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'container sm:mx-auto md:mx-auto lg:mx-auto mx-2', [
      PageHeader(),
      AsyncBuilder(builder: (context) async* {
        var post = await PostService.getPostById(context.session, id);

        if (post != null) {
          final title = post.title;
          final content = post.content;

          final url = '/post/${post.id}';

          yield PostItem(title: title, url: url, content: content);
        }
      })
    ]);
  }
}
