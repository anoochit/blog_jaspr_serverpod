import 'package:jaspr/server.dart';

import '../components/navigation.dart';

class BlogPage extends StatelessComponent {
  const BlogPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([Navigation()]);

    yield div([
      h1([Text('Blog')])
    ]);
  }
}
