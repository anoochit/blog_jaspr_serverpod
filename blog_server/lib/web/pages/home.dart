import 'package:jaspr/server.dart';
import 'package:jaspr_serverpod/jaspr_serverpod.dart';

import '../../src/services/post_service.dart';
import '../components/page_header.dart';
import '../components/page_title.dart';
import '../components/post_item.dart';
// import '../components/page_title.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'container sm:mx-auto md:mx-auto lg:mx-auto mx-2', [
      // header
      PageHeader(),
      // title
      PageTitle(title: 'Home'),
      // post contents
      AsyncBuilder(builder: (context) async* {
        var posts = await PostService.getPosts(context.session);

        for (var post in posts) {
          final title = post.title;
          final content = post.content;
          final url = '/post/${post.id}';

          yield PostItem(title: title, url: url, content: content);
        }
      })
    ]);
  }
}
