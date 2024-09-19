import 'package:jaspr/jaspr.dart';

import '../components/navigation.dart';

class PostPage extends StatelessComponent {
  const PostPage({super.key, required this.id});
  final int id;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([Navigation()]);

    yield div(classes: 'md:container md:mx-auto', [
      h1(classes: 'text-3xl font-bold', [Text('Post')]),
      Text('Id = $id')
    ]);
  }
}
