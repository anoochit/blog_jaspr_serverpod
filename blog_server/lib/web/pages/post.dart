import 'package:jaspr/jaspr.dart';

import '../components/navigation.dart';

class PostPage extends StatelessComponent {
  const PostPage({super.key, required this.id});
  final int id;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([Navigation()]);

    yield div([
      h1([Text('Post')]),
      Text('Id = $id')
    ]);
  }
}
