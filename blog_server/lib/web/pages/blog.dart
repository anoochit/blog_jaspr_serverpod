import 'package:jaspr/server.dart';

import '../components/page_header.dart';
import '../components/page_title.dart';

class BlogPage extends StatelessComponent {
  const BlogPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'container sm:mx-auto md:mx-auto lg:mx-auto mx-2', [
      PageHeader(),
      PageTitle(title: 'Blog'),
    ]);
  }
}
