import 'package:jaspr/server.dart';
import 'package:jaspr_serverpod/jaspr_serverpod.dart';

import '../../src/services/post_service.dart';
import '../components/page_header.dart';
import '../components/page_title.dart';
import '../components/post_item.dart';

class AboutPage extends StatelessComponent {
  const AboutPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'container sm:mx-auto md:mx-auto lg:mx-auto mx-2', [
      PageHeader(),
      PageTitle(title: 'About'),
      AsyncBuilder(builder: (context) async* {
        var post = await PostService.getPostById(context.session, 1);

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
