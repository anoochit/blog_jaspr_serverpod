import 'package:jaspr/jaspr.dart';

class PostPage extends StatelessComponent {
  const PostPage({super.key, required this.id});

  final String id;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'main', [
      h1([Text('Post')]),
      Text('Id = $id')
    ]);
  }
}
